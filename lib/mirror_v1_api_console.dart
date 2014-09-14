library mirror_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_mirror_v1_api/src/console_client.dart';

import "package:google_mirror_v1_api/mirror_v1_api_client.dart";

/** API for interacting with Glass users via the timeline. */
@deprecated
class Mirror extends Client with ConsoleClient {

  /** OAuth Scope2: View your location */
  static const String GLASS_LOCATION_SCOPE = "https://www.googleapis.com/auth/glass.location";

  /** OAuth Scope2: View and manage your Glass timeline */
  static const String GLASS_TIMELINE_SCOPE = "https://www.googleapis.com/auth/glass.timeline";

  final oauth2.OAuth2Console auth;

  Mirror([oauth2.OAuth2Console this.auth]);
}
