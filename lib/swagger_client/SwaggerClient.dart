

import '../generated/swagger.swagger.dart';

class SwaggerClient {
  static final client = Swagger.create(baseUrl: Uri.parse("http://localhost:5208/"));
}