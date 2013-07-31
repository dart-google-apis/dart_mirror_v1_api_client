library mirror_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_mirror_v1_api/src/cloud_api_console.dart';

import "package:google_mirror_v1_api/mirror_v1_api_client.dart";

/** API for interacting with Glass users via the timeline. */
class Mirror extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Mirror([oauth2.OAuth2Console this.auth]);
}
