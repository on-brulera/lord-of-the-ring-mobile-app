import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {

  static String apiToken = dotenv.env['THE_API_TOKEN_LOTR'] ?? 'No hay API Token';
  static String baseUrl = dotenv.env['BASE_PATH'] ?? 'No hay base url api';

}