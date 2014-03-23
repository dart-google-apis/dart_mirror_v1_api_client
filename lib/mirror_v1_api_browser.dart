library mirror_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_mirror_v1_api/src/browser_client.dart';
import "package:google_mirror_v1_api/mirror_v1_api_client.dart";

/** API for interacting with Glass users via the timeline. */
class Mirror extends Client with BrowserClient {

  /** OAuth Scope2: View your location */
  static const String GLASS_LOCATION_SCOPE = "https://www.googleapis.com/auth/glass.location";

  /** OAuth Scope2: View and manage your Glass timeline */
  static const String GLASS_TIMELINE_SCOPE = "https://www.googleapis.com/auth/glass.timeline";

  final oauth.OAuth2 auth;

  Mirror([oauth.OAuth2 this.auth]);
}
