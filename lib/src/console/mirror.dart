part of mirror_v1_api_console;

/** Client to access the mirror v1 API */
/** API for interacting with Glass users via the timeline. */
class Mirror extends ConsoleClient {

  ContactsResource _contacts;
  ContactsResource get contacts => _contacts;
  LocationsResource _locations;
  LocationsResource get locations => _locations;
  SubscriptionsResource _subscriptions;
  SubscriptionsResource get subscriptions => _subscriptions;
  TimelineResource _timeline;
  TimelineResource get timeline => _timeline;

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Mirror([oauth2.OAuth2Console auth]) : super(auth) {
    basePath = "/mirror/v1/";
    rootUrl = "https://www.googleapis.com:443/";
    _contacts = new ContactsResource(this);
    _locations = new LocationsResource(this);
    _subscriptions = new SubscriptionsResource(this);
    _timeline = new TimelineResource(this);
  }
}
