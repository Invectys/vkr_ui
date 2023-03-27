// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Swagger extends Swagger {
  _$Swagger([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Swagger;

  @override
  Future<Response<List<AvtoDatabase>>> _apiAvtoAvtosGet({
    int? skip,
    int? limit,
    String? brand,
    String? ownerName,
    String? phoneNumber,
  }) {
    final Uri $url = Uri.parse('/api/avto/avtos');
    final Map<String, dynamic> $params = <String, dynamic>{
      'skip': skip,
      'limit': limit,
      'brand': brand,
      'ownerName': ownerName,
      'phoneNumber': phoneNumber,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<AvtoDatabase>, AvtoDatabase>($request);
  }

  @override
  Future<Response<dynamic>> _apiAvtoCreatePost({required AvtoDatabase? body}) {
    final Uri $url = Uri.parse('/api/avto/create');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiAvtoDeleteDelete({required String? body}) {
    final Uri $url = Uri.parse('/api/avto/delete');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiAvtoUpdatePut({required AvtoDatabase? body}) {
    final Uri $url = Uri.parse('/api/avto/update');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<ClientDatabase>>> _apiClientsClientsGet({
    int? skip,
    int? limit,
    String? phoneNumber,
    String? name,
  }) {
    final Uri $url = Uri.parse('/api/clients/clients');
    final Map<String, dynamic> $params = <String, dynamic>{
      'skip': skip,
      'limit': limit,
      'phoneNumber': phoneNumber,
      'name': name,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ClientDatabase>, ClientDatabase>($request);
  }

  @override
  Future<Response<dynamic>> _apiClientsCreatePost(
      {required ClientDatabase? body}) {
    final Uri $url = Uri.parse('/api/clients/create');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiClientsDeleteDelete({required String? body}) {
    final Uri $url = Uri.parse('/api/clients/delete');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiClientsUpdatePut(
      {required ClientDatabase? body}) {
    final Uri $url = Uri.parse('/api/clients/update');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<RepairDatabase>>> _apiRepairsRepairsGet({
    int? skip,
    int? limit,
    String? brand,
    String? ownerName,
    String? phoneNumber,
  }) {
    final Uri $url = Uri.parse('/api/repairs/repairs');
    final Map<String, dynamic> $params = <String, dynamic>{
      'skip': skip,
      'limit': limit,
      'brand': brand,
      'ownerName': ownerName,
      'phoneNumber': phoneNumber,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<RepairDatabase>, RepairDatabase>($request);
  }

  @override
  Future<Response<dynamic>> _apiRepairsCreatePost(
      {required RepairDatabase? body}) {
    final Uri $url = Uri.parse('/api/repairs/create');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiRepairsChangeStagePost(
      {required ChangeStage? body}) {
    final Uri $url = Uri.parse('/api/repairs/change-stage');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiRepairsDonePost({required String? body}) {
    final Uri $url = Uri.parse('/api/repairs/done');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<WeatherForecast>>> _weatherForecastGet() {
    final Uri $url = Uri.parse('/WeatherForecast');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<WeatherForecast>, WeatherForecast>($request);
  }
}
