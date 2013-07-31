library mirror_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_mirror_v1_api/src/cloud_api_browser.dart';
import "package:google_mirror_v1_api/mirror_v1_api_client.dart";

/** API for interacting with Glass users via the timeline. */
class Mirror extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Mirror([oauth.OAuth2 this.auth]);
}
