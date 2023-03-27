import 'package:flutter/material.dart';

class PaginationHttp<T> extends StatefulWidget {
  const PaginationHttp({Key? key,
    required this.fetchNew,
    required this.itemBuilder,
    this.countByLoad = 20,
    this.extentAfter = 200,
    this.isGridView = false,
    this.reverse = false,
    this.useRefreshIndicator = true,
    this.gridDelegate,
    this.noItemsWidget,
    this.wasRefreshed
  }) : super(key: key);

  final Widget? noItemsWidget;
  final bool useRefreshIndicator;
  final bool reverse;
  final bool isGridView;
  final SliverGridDelegate? gridDelegate;
  final int extentAfter;
  final int countByLoad;
  final Function()? wasRefreshed;
  final Future<List<T>> Function(int skip, int count) fetchNew;
  final Widget Function(BuildContext context, dynamic data, int index) itemBuilder;

  @override
  PaginationHttpState createState() => PaginationHttpState<T>();
}

class PaginationHttpState<T> extends State<PaginationHttp> {

  bool _isEnd = false;
  late ScrollController _controller;
  List<T> _list = [];
  bool _loading = false;
  bool isListEmpty() => _list.isEmpty;

  void removeItem(bool Function(T element) test) {
    setState(() => {
      _list.removeWhere(test)
    });
  }

  void insertInStart(Iterable<T> list, {int insertIn = 0}) {
    setState(() {
      _list.insertAll(insertIn, list);
    });
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(listener);

    if(_list.isEmpty) {
      fetchAndUpdate();
    }

    super.initState();
  }

  Future refresh() {
    if(_loading == true) {
      return Future.delayed(const Duration(milliseconds: 200));
    }
    setState(() {
      _list = [];
      _isEnd = false;
    });
    //SnackBarApp.show(context, "Перезагружено");
    if(widget.wasRefreshed != null) {
      widget.wasRefreshed!.call();
    }
    return fetchAndUpdate();
  }

  Future fetchAndUpdate() async {
    if(_loading == true || _isEnd == true) {
      return;
    }
    _loading = true;

    var skip = _list.length;
    var list = await widget.fetchNew(skip, widget.countByLoad);
    debugPrint("load extra items in mongodbPagination " + T.toString());

    if(list.isEmpty) {
      _isEnd = true;
    }

    if(!mounted) {
      return;
    }


    setState(() {
      _list.addAll(list as List<T>);
    });
    _loading = false;
  }

  Future listener() async {
    if(_controller.position.extentAfter < widget.extentAfter) {
      fetchAndUpdate();
    }
  }

  @override
  void dispose() {
    _controller.removeListener(listener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(_loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if(_list.isEmpty) {
      if(widget.noItemsWidget == null) {
        return Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Ничего нету"),
                IconButton(
                    onPressed: () {
                      refresh();
                    },
                    icon: Icon(Icons.refresh)
                )
              ],
            )
        );
      }
      return widget.noItemsWidget!;
    }
    if(widget.isGridView) {
      return GridView.builder(
          controller: _controller,
          gridDelegate: widget.gridDelegate!,
          addAutomaticKeepAlives: true,
          itemCount: _list.length,
          itemBuilder: (context, index) {
            var data = _list[index];
            return widget.itemBuilder.call(context, data, index);
          }
      );
    }

    var listViewBuilder = ListView.builder(
        controller: _controller,
        addAutomaticKeepAlives: true,
        physics: const AlwaysScrollableScrollPhysics(),
        reverse: widget.reverse,
        itemCount: _list.length,
        itemBuilder: (context, index) {
          var data = _list[index];
          return widget.itemBuilder.call(context, data, index);
        }
    );

    if(widget.useRefreshIndicator) {
      return RefreshIndicator(
          onRefresh: () {
            return refresh();
          },
          child: listViewBuilder
      );
    }
    return listViewBuilder;
  }
}