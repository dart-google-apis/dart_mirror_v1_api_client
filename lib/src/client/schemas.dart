part of mirror_v1_api;

/** Represents an account passed into the Account Manager on Glass. */
class Account {

  core.List<AuthToken> authTokens;

  core.List<core.String> features;

  core.String password;

  core.List<UserData> userData;

  /** Create new Account from JSON data */
  Account.fromJson(core.Map json) {
    if (json.containsKey("authTokens")) {
      authTokens = json["authTokens"].map((authTokensItem) => new AuthToken.fromJson(authTokensItem)).toList();
    }
    if (json.containsKey("features")) {
      features = json["features"].toList();
    }
    if (json.containsKey("password")) {
      password = json["password"];
    }
    if (json.containsKey("userData")) {
      userData = json["userData"].map((userDataItem) => new UserData.fromJson(userDataItem)).toList();
    }
  }

  /** Create JSON Object for Account */
  core.Map toJson() {
    var output = new core.Map();

    if (authTokens != null) {
      output["authTokens"] = authTokens.map((authTokensItem) => authTokensItem.toJson()).toList();
    }
    if (features != null) {
      output["features"] = features.toList();
    }
    if (password != null) {
      output["password"] = password;
    }
    if (userData != null) {
      output["userData"] = userData.map((userDataItem) => userDataItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of Account */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents media content, such as a photo, that can be attached to a timeline item. */
class Attachment {

  /** The MIME type of the attachment. */
  core.String contentType;

  /** The URL for the content. */
  core.String contentUrl;

  /** The ID of the attachment. */
  core.String id;

  /** Indicates that the contentUrl is not available because the attachment content is still being processed. If the caller wishes to retrieve the content, it should try again later. */
  core.bool isProcessingContent;

  /** Create new Attachment from JSON data */
  Attachment.fromJson(core.Map json) {
    if (json.containsKey("contentType")) {
      contentType = json["contentType"];
    }
    if (json.containsKey("contentUrl")) {
      contentUrl = json["contentUrl"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("isProcessingContent")) {
      isProcessingContent = json["isProcessingContent"];
    }
  }

  /** Create JSON Object for Attachment */
  core.Map toJson() {
    var output = new core.Map();

    if (contentType != null) {
      output["contentType"] = contentType;
    }
    if (contentUrl != null) {
      output["contentUrl"] = contentUrl;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (isProcessingContent != null) {
      output["isProcessingContent"] = isProcessingContent;
    }

    return output;
  }

  /** Return String representation of Attachment */
  core.String toString() => JSON.encode(this.toJson());

}

/** A list of Attachments. This is the response from the server to GET requests on the attachments collection. */
class AttachmentsListResponse {

  /** The list of attachments. */
  core.List<Attachment> items;

  /** The type of resource. This is always mirror#attachmentsList. */
  core.String kind;

  /** Create new AttachmentsListResponse from JSON data */
  AttachmentsListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Attachment.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AttachmentsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AttachmentsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class AuthToken {

  core.String authToken;

  core.String type;

  /** Create new AuthToken from JSON data */
  AuthToken.fromJson(core.Map json) {
    if (json.containsKey("authToken")) {
      authToken = json["authToken"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AuthToken */
  core.Map toJson() {
    var output = new core.Map();

    if (authToken != null) {
      output["authToken"] = authToken;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AuthToken */
  core.String toString() => JSON.encode(this.toJson());

}

/** A single menu command that is part of a Contact. */
class Command {

  /** The type of operation this command corresponds to. Allowed values are:  
- TAKE_A_NOTE - Shares a timeline item with the transcription of user speech from the "Take a note" voice menu command.  
- POST_AN_UPDATE - Shares a timeline item with the transcription of user speech from the "Post an update" voice menu command. */
  core.String type;

  /** Create new Command from JSON data */
  Command.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Command */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Command */
  core.String toString() => JSON.encode(this.toJson());

}

/** A person or group that can be used as a creator or a contact. */
class Contact {

  /** A list of voice menu commands that a contact can handle. Glass shows up to three contacts for each voice menu command. If there are more than that, the three contacts with the highest priority are shown for that particular command. */
  core.List<Command> acceptCommands;

  /** A list of MIME types that a contact supports. The contact will be shown to the user if any of its acceptTypes matches any of the types of the attachments on the item. If no acceptTypes are given, the contact will be shown for all items. */
  core.List<core.String> acceptTypes;

  /** The name to display for this contact. */
  core.String displayName;

  /** An ID for this contact. This is generated by the application and is treated as an opaque token. */
  core.String id;

  /** Set of image URLs to display for a contact. Most contacts will have a single image, but a "group" contact may include up to 8 image URLs and they will be resized and cropped into a mosaic on the client. */
  core.List<core.String> imageUrls;

  /** The type of resource. This is always mirror#contact. */
  core.String kind;

  /** Primary phone number for the contact. This can be a fully-qualified number, with country calling code and area code, or a local number. */
  core.String phoneNumber;

  /** Priority for the contact to determine ordering in a list of contacts. Contacts with higher priorities will be shown before ones with lower priorities. */
  core.int priority;

  /** A list of sharing features that a contact can handle. Allowed values are:  
- ADD_CAPTION */
  core.List<core.String> sharingFeatures;

  /** The ID of the application that created this contact. This is populated by the API */
  core.String source;

  /** Name of this contact as it should be pronounced. If this contact's name must be spoken as part of a voice disambiguation menu, this name is used as the expected pronunciation. This is useful for contact names with unpronounceable characters or whose display spelling is otherwise not phonetic. */
  core.String speakableName;

  /** The type for this contact. This is used for sorting in UIs. Allowed values are:  
- INDIVIDUAL - Represents a single person. This is the default. 
- GROUP - Represents more than a single person. */
  core.String type;

  /** Create new Contact from JSON data */
  Contact.fromJson(core.Map json) {
    if (json.containsKey("acceptCommands")) {
      acceptCommands = json["acceptCommands"].map((acceptCommandsItem) => new Command.fromJson(acceptCommandsItem)).toList();
    }
    if (json.containsKey("acceptTypes")) {
      acceptTypes = json["acceptTypes"].toList();
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("imageUrls")) {
      imageUrls = json["imageUrls"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("phoneNumber")) {
      phoneNumber = json["phoneNumber"];
    }
    if (json.containsKey("priority")) {
      priority = json["priority"];
    }
    if (json.containsKey("sharingFeatures")) {
      sharingFeatures = json["sharingFeatures"].toList();
    }
    if (json.containsKey("source")) {
      source = json["source"];
    }
    if (json.containsKey("speakableName")) {
      speakableName = json["speakableName"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Contact */
  core.Map toJson() {
    var output = new core.Map();

    if (acceptCommands != null) {
      output["acceptCommands"] = acceptCommands.map((acceptCommandsItem) => acceptCommandsItem.toJson()).toList();
    }
    if (acceptTypes != null) {
      output["acceptTypes"] = acceptTypes.toList();
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (imageUrls != null) {
      output["imageUrls"] = imageUrls.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (phoneNumber != null) {
      output["phoneNumber"] = phoneNumber;
    }
    if (priority != null) {
      output["priority"] = priority;
    }
    if (sharingFeatures != null) {
      output["sharingFeatures"] = sharingFeatures.toList();
    }
    if (source != null) {
      output["source"] = source;
    }
    if (speakableName != null) {
      output["speakableName"] = speakableName;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Contact */
  core.String toString() => JSON.encode(this.toJson());

}

/** A list of Contacts representing contacts. This is the response from the server to GET requests on the contacts collection. */
class ContactsListResponse {

  /** Contact list. */
  core.List<Contact> items;

  /** The type of resource. This is always mirror#contacts. */
  core.String kind;

  /** Create new ContactsListResponse from JSON data */
  ContactsListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Contact.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ContactsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ContactsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A geographic location that can be associated with a timeline item. */
class Location {

  /** The accuracy of the location fix in meters. */
  core.num accuracy;

  /** The full address of the location. */
  core.String address;

  /** The name to be displayed. This may be a business name or a user-defined place, such as "Home". */
  core.String displayName;

  /** The ID of the location. */
  core.String id;

  /** The type of resource. This is always mirror#location. */
  core.String kind;

  /** The latitude, in degrees. */
  core.num latitude;

  /** The longitude, in degrees. */
  core.num longitude;

  /** The time at which this location was captured, formatted according to RFC 3339. */
  core.String timestamp;

  /** Create new Location from JSON data */
  Location.fromJson(core.Map json) {
    if (json.containsKey("accuracy")) {
      accuracy = json["accuracy"];
    }
    if (json.containsKey("address")) {
      address = json["address"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
    if (json.containsKey("timestamp")) {
      timestamp = json["timestamp"];
    }
  }

  /** Create JSON Object for Location */
  core.Map toJson() {
    var output = new core.Map();

    if (accuracy != null) {
      output["accuracy"] = accuracy;
    }
    if (address != null) {
      output["address"] = address;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }
    if (timestamp != null) {
      output["timestamp"] = timestamp;
    }

    return output;
  }

  /** Return String representation of Location */
  core.String toString() => JSON.encode(this.toJson());

}

/** A list of Locations. This is the response from the server to GET requests on the locations collection. */
class LocationsListResponse {

  /** The list of locations. */
  core.List<Location> items;

  /** The type of resource. This is always mirror#locationsList. */
  core.String kind;

  /** Create new LocationsListResponse from JSON data */
  LocationsListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Location.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for LocationsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of LocationsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A custom menu item that can be presented to the user by a timeline item. */
class MenuItem {

  /** Controls the behavior when the user picks the menu option. Allowed values are:  
- CUSTOM - Custom action set by the service. When the user selects this menuItem, the API triggers a notification to your callbackUrl with the userActions.type set to CUSTOM and the userActions.payload set to the ID of this menu item. This is the default value. 
- Built-in actions:  
- REPLY - Initiate a reply to the timeline item using the voice recording UI. The creator attribute must be set in the timeline item for this menu to be available. 
- REPLY_ALL - Same behavior as REPLY. The original timeline item's recipients will be added to the reply item. 
- DELETE - Delete the timeline item. 
- SHARE - Share the timeline item with the available contacts. 
- READ_ALOUD - Read the timeline item's speakableText aloud; if this field is not set, read the text field; if none of those fields are set, this menu item is ignored. 
- GET_MEDIA_INPUT - Allow users to provide media payloads to Glassware from a menu item (currently, only transcribed text from voice input is supported). Subscribe to notifications when users invoke this menu item to receive the timeline item ID. Retrieve the media from the timeline item in the payload property. 
- VOICE_CALL - Initiate a phone call using the timeline item's creator.phoneNumber attribute as recipient. 
- NAVIGATE - Navigate to the timeline item's location. 
- TOGGLE_PINNED - Toggle the isPinned state of the timeline item. 
- OPEN_URI - Open the payload of the menu item in the browser. 
- PLAY_VIDEO - Open the payload of the menu item in the Glass video player. 
- SEND_MESSAGE - Initiate sending a message to the timeline item's creator:  
- If the creator.phoneNumber is set and Glass is connected to an Android phone, the message is an SMS. 
- Otherwise, if the creator.email is set, the message is an email. */
  core.String action;

  /** The ID for this menu item. This is generated by the application and is treated as an opaque token. */
  core.String id;

  /** A generic payload whose meaning changes depending on this MenuItem's action.  
- When the action is OPEN_URI, the payload is the URL of the website to view. 
- When the action is PLAY_VIDEO, the payload is the streaming URL of the video 
- When the action is GET_MEDIA_INPUT, the payload is the text transcription of a user's speech input */
  core.String payload;

  /** If set to true on a CUSTOM menu item, that item will be removed from the menu after it is selected. */
  core.bool removeWhenSelected;

  /** For CUSTOM items, a list of values controlling the appearance of the menu item in each of its states. A value for the DEFAULT state must be provided. If the PENDING or CONFIRMED states are missing, they will not be shown. */
  core.List<MenuValue> values;

  /** Create new MenuItem from JSON data */
  MenuItem.fromJson(core.Map json) {
    if (json.containsKey("action")) {
      action = json["action"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("payload")) {
      payload = json["payload"];
    }
    if (json.containsKey("removeWhenSelected")) {
      removeWhenSelected = json["removeWhenSelected"];
    }
    if (json.containsKey("values")) {
      values = json["values"].map((valuesItem) => new MenuValue.fromJson(valuesItem)).toList();
    }
  }

  /** Create JSON Object for MenuItem */
  core.Map toJson() {
    var output = new core.Map();

    if (action != null) {
      output["action"] = action;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (payload != null) {
      output["payload"] = payload;
    }
    if (removeWhenSelected != null) {
      output["removeWhenSelected"] = removeWhenSelected;
    }
    if (values != null) {
      output["values"] = values.map((valuesItem) => valuesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of MenuItem */
  core.String toString() => JSON.encode(this.toJson());

}

/** A single value that is part of a MenuItem. */
class MenuValue {

  /** The name to display for the menu item. If you specify this property for a built-in menu item, the default contextual voice command for that menu item is not shown. */
  core.String displayName;

  /** URL of an icon to display with the menu item. */
  core.String iconUrl;

  /** The state that this value applies to. Allowed values are:  
- DEFAULT - Default value shown when displayed in the menuItems list. 
- PENDING - Value shown when the menuItem has been selected by the user but can still be cancelled. 
- CONFIRMED - Value shown when the menuItem has been selected by the user and can no longer be cancelled. */
  core.String state;

  /** Create new MenuValue from JSON data */
  MenuValue.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("iconUrl")) {
      iconUrl = json["iconUrl"];
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
  }

  /** Create JSON Object for MenuValue */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (iconUrl != null) {
      output["iconUrl"] = iconUrl;
    }
    if (state != null) {
      output["state"] = state;
    }

    return output;
  }

  /** Return String representation of MenuValue */
  core.String toString() => JSON.encode(this.toJson());

}

/** A notification delivered by the API. */
class Notification {

  /** The collection that generated the notification. */
  core.String collection;

  /** The ID of the item that generated the notification. */
  core.String itemId;

  /** The type of operation that generated the notification. */
  core.String operation;

  /** A list of actions taken by the user that triggered the notification. */
  core.List<UserAction> userActions;

  /** The user token provided by the service when it subscribed for notifications. */
  core.String userToken;

  /** The secret verify token provided by the service when it subscribed for notifications. */
  core.String verifyToken;

  /** Create new Notification from JSON data */
  Notification.fromJson(core.Map json) {
    if (json.containsKey("collection")) {
      collection = json["collection"];
    }
    if (json.containsKey("itemId")) {
      itemId = json["itemId"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
    if (json.containsKey("userActions")) {
      userActions = json["userActions"].map((userActionsItem) => new UserAction.fromJson(userActionsItem)).toList();
    }
    if (json.containsKey("userToken")) {
      userToken = json["userToken"];
    }
    if (json.containsKey("verifyToken")) {
      verifyToken = json["verifyToken"];
    }
  }

  /** Create JSON Object for Notification */
  core.Map toJson() {
    var output = new core.Map();

    if (collection != null) {
      output["collection"] = collection;
    }
    if (itemId != null) {
      output["itemId"] = itemId;
    }
    if (operation != null) {
      output["operation"] = operation;
    }
    if (userActions != null) {
      output["userActions"] = userActions.map((userActionsItem) => userActionsItem.toJson()).toList();
    }
    if (userToken != null) {
      output["userToken"] = userToken;
    }
    if (verifyToken != null) {
      output["verifyToken"] = verifyToken;
    }

    return output;
  }

  /** Return String representation of Notification */
  core.String toString() => JSON.encode(this.toJson());

}

/** Controls how notifications for a timeline item are presented to the user. */
class NotificationConfig {

  /** The time at which the notification should be delivered. */
  core.String deliveryTime;

  /** Describes how important the notification is. Allowed values are:  
- DEFAULT - Notifications of default importance. A chime will be played to alert users. */
  core.String level;

  /** Create new NotificationConfig from JSON data */
  NotificationConfig.fromJson(core.Map json) {
    if (json.containsKey("deliveryTime")) {
      deliveryTime = json["deliveryTime"];
    }
    if (json.containsKey("level")) {
      level = json["level"];
    }
  }

  /** Create JSON Object for NotificationConfig */
  core.Map toJson() {
    var output = new core.Map();

    if (deliveryTime != null) {
      output["deliveryTime"] = deliveryTime;
    }
    if (level != null) {
      output["level"] = level;
    }

    return output;
  }

  /** Return String representation of NotificationConfig */
  core.String toString() => JSON.encode(this.toJson());

}

/** A setting for Glass. */
class Setting {

  /** The setting's ID. */
  core.String id;

  /** The type of resource. This is always mirror#setting. */
  core.String kind;

  /** The setting value, as a string. */
  core.String value;

  /** Create new Setting from JSON data */
  Setting.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for Setting */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of Setting */
  core.String toString() => JSON.encode(this.toJson());

}

/** A subscription to events on a collection. */
class Subscription {

  /** The URL where notifications should be delivered (must start with https://). */
  core.String callbackUrl;

  /** The collection to subscribe to. Allowed values are:  
- timeline - Changes in the timeline including insertion, deletion, and updates. 
- locations - Location updates. */
  core.String collection;

  /** The ID of the subscription. */
  core.String id;

  /** The type of resource. This is always mirror#subscription. */
  core.String kind;

  /** Container object for notifications. This is not populated in the Subscription resource. */
  Notification notification;

  /** A list of operations that should be subscribed to. An empty list indicates that all operations on the collection should be subscribed to. Allowed values are:  
- UPDATE - The item has been updated. 
- INSERT - A new item has been inserted. 
- DELETE - The item has been deleted. 
- MENU_ACTION - A custom menu item has been triggered by the user. */
  core.List<core.String> operation;

  /** The time at which this subscription was last modified, formatted according to RFC 3339. */
  core.String updated;

  /** An opaque token sent to the subscriber in notifications so that it can determine the ID of the user. */
  core.String userToken;

  /** A secret token sent to the subscriber in notifications so that it can verify that the notification was generated by Google. */
  core.String verifyToken;

  /** Create new Subscription from JSON data */
  Subscription.fromJson(core.Map json) {
    if (json.containsKey("callbackUrl")) {
      callbackUrl = json["callbackUrl"];
    }
    if (json.containsKey("collection")) {
      collection = json["collection"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("notification")) {
      notification = new Notification.fromJson(json["notification"]);
    }
    if (json.containsKey("operation")) {
      operation = json["operation"].toList();
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("userToken")) {
      userToken = json["userToken"];
    }
    if (json.containsKey("verifyToken")) {
      verifyToken = json["verifyToken"];
    }
  }

  /** Create JSON Object for Subscription */
  core.Map toJson() {
    var output = new core.Map();

    if (callbackUrl != null) {
      output["callbackUrl"] = callbackUrl;
    }
    if (collection != null) {
      output["collection"] = collection;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (notification != null) {
      output["notification"] = notification.toJson();
    }
    if (operation != null) {
      output["operation"] = operation.toList();
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (userToken != null) {
      output["userToken"] = userToken;
    }
    if (verifyToken != null) {
      output["verifyToken"] = verifyToken;
    }

    return output;
  }

  /** Return String representation of Subscription */
  core.String toString() => JSON.encode(this.toJson());

}

/** A list of Subscriptions. This is the response from the server to GET requests on the subscription collection. */
class SubscriptionsListResponse {

  /** The list of subscriptions. */
  core.List<Subscription> items;

  /** The type of resource. This is always mirror#subscriptionsList. */
  core.String kind;

  /** Create new SubscriptionsListResponse from JSON data */
  SubscriptionsListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Subscription.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for SubscriptionsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of SubscriptionsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Each item in the user's timeline is represented as a TimelineItem JSON structure, described below. */
class TimelineItem {

  /** A list of media attachments associated with this item. As a convenience, you can refer to attachments in your HTML payloads with the attachment or cid scheme. For example:  
- attachment: <img src="attachment:attachment_index"> where attachment_index is the 0-based index of this array. 
- cid: <img src="cid:attachment_id"> where attachment_id is the ID of the attachment. */
  core.List<Attachment> attachments;

  /** The bundle ID for this item. Services can specify a bundleId to group many items together. They appear under a single top-level item on the device. */
  core.String bundleId;

  /** A canonical URL pointing to the canonical/high quality version of the data represented by the timeline item. */
  core.String canonicalUrl;

  /** The time at which this item was created, formatted according to RFC 3339. */
  core.String created;

  /** The user or group that created this item. */
  Contact creator;

  /** The time that should be displayed when this item is viewed in the timeline, formatted according to RFC 3339. This user's timeline is sorted chronologically on display time, so this will also determine where the item is displayed in the timeline. If not set by the service, the display time defaults to the updated time. */
  core.String displayTime;

  /** ETag for this item. */
  core.String etag;

  /** HTML content for this item. If both text and html are provided for an item, the html will be rendered in the timeline.
Allowed HTML elements - You can use these elements in your timeline cards.
 
- Headers: h1, h2, h3, h4, h5, h6 
- Images: img 
- Lists: li, ol, ul 
- HTML5 semantics: article, aside, details, figure, figcaption, footer, header, nav, section, summary, time 
- Structural: blockquote, br, div, hr, p, span 
- Style: b, big, center, em, i, u, s, small, strike, strong, style, sub, sup 
- Tables: table, tbody, td, tfoot, th, thead, tr  
Blocked HTML elements: These elements and their contents are removed from HTML payloads.
 
- Document headers: head, title 
- Embeds: audio, embed, object, source, video 
- Frames: frame, frameset 
- Scripting: applet, script  
Other elements: Any elements that aren't listed are removed, but their contents are preserved. */
  core.String html;

  /** The ID of the timeline item. This is unique within a user's timeline. */
  core.String id;

  /** If this item was generated as a reply to another item, this field will be set to the ID of the item being replied to. This can be used to attach a reply to the appropriate conversation or post. */
  core.String inReplyTo;

  /** Whether this item is a bundle cover.

If an item is marked as a bundle cover, it will be the entry point to the bundle of items that have the same bundleId as that item. It will be shown only on the main timeline — not within the opened bundle.

On the main timeline, items that are shown are:  
- Items that have isBundleCover set to true  
- Items that do not have a bundleId  In a bundle sub-timeline, items that are shown are:  
- Items that have the bundleId in question AND isBundleCover set to false */
  core.bool isBundleCover;

  /** When true, indicates this item is deleted, and only the ID property is set. */
  core.bool isDeleted;

  /** When true, indicates this item is pinned, which means it's grouped alongside "active" items like navigation and hangouts, on the opposite side of the home screen from historical (non-pinned) timeline items. You can allow the user to toggle the value of this property with the TOGGLE_PINNED built-in menu item. */
  core.bool isPinned;

  /** The type of resource. This is always mirror#timelineItem. */
  core.String kind;

  /** The geographic location associated with this item. */
  Location location;

  /** A list of menu items that will be presented to the user when this item is selected in the timeline. */
  core.List<MenuItem> menuItems;

  /** Controls how notifications for this item are presented on the device. If this is missing, no notification will be generated. */
  NotificationConfig notification;

  /** For pinned items, this determines the order in which the item is displayed in the timeline, with a higher score appearing closer to the clock. Note: setting this field is currently not supported. */
  core.int pinScore;

  /** A list of users or groups that this item has been shared with. */
  core.List<Contact> recipients;

  /** A URL that can be used to retrieve this item. */
  core.String selfLink;

  /** Opaque string you can use to map a timeline item to data in your own service. */
  core.String sourceItemId;

  /** The speakable version of the content of this item. Along with the READ_ALOUD menu item, use this field to provide text that would be clearer when read aloud, or to provide extended information to what is displayed visually on Glass.

Glassware should also specify the speakableType field, which will be spoken before this text in cases where the additional context is useful, for example when the user requests that the item be read aloud following a notification. */
  core.String speakableText;

  /** A speakable description of the type of this item. This will be announced to the user prior to reading the content of the item in cases where the additional context is useful, for example when the user requests that the item be read aloud following a notification.

This should be a short, simple noun phrase such as "Email", "Text message", or "Daily Planet News Update".

Glassware are encouraged to populate this field for every timeline item, even if the item does not contain speakableText or text so that the user can learn the type of the item without looking at the screen. */
  core.String speakableType;

  /** Text content of this item. */
  core.String text;

  /** The title of this item. */
  core.String title;

  /** The time at which this item was last modified, formatted according to RFC 3339. */
  core.String updated;

  /** Create new TimelineItem from JSON data */
  TimelineItem.fromJson(core.Map json) {
    if (json.containsKey("attachments")) {
      attachments = json["attachments"].map((attachmentsItem) => new Attachment.fromJson(attachmentsItem)).toList();
    }
    if (json.containsKey("bundleId")) {
      bundleId = json["bundleId"];
    }
    if (json.containsKey("canonicalUrl")) {
      canonicalUrl = json["canonicalUrl"];
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("creator")) {
      creator = new Contact.fromJson(json["creator"]);
    }
    if (json.containsKey("displayTime")) {
      displayTime = json["displayTime"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("html")) {
      html = json["html"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("inReplyTo")) {
      inReplyTo = json["inReplyTo"];
    }
    if (json.containsKey("isBundleCover")) {
      isBundleCover = json["isBundleCover"];
    }
    if (json.containsKey("isDeleted")) {
      isDeleted = json["isDeleted"];
    }
    if (json.containsKey("isPinned")) {
      isPinned = json["isPinned"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("location")) {
      location = new Location.fromJson(json["location"]);
    }
    if (json.containsKey("menuItems")) {
      menuItems = json["menuItems"].map((menuItemsItem) => new MenuItem.fromJson(menuItemsItem)).toList();
    }
    if (json.containsKey("notification")) {
      notification = new NotificationConfig.fromJson(json["notification"]);
    }
    if (json.containsKey("pinScore")) {
      pinScore = json["pinScore"];
    }
    if (json.containsKey("recipients")) {
      recipients = json["recipients"].map((recipientsItem) => new Contact.fromJson(recipientsItem)).toList();
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("sourceItemId")) {
      sourceItemId = json["sourceItemId"];
    }
    if (json.containsKey("speakableText")) {
      speakableText = json["speakableText"];
    }
    if (json.containsKey("speakableType")) {
      speakableType = json["speakableType"];
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for TimelineItem */
  core.Map toJson() {
    var output = new core.Map();

    if (attachments != null) {
      output["attachments"] = attachments.map((attachmentsItem) => attachmentsItem.toJson()).toList();
    }
    if (bundleId != null) {
      output["bundleId"] = bundleId;
    }
    if (canonicalUrl != null) {
      output["canonicalUrl"] = canonicalUrl;
    }
    if (created != null) {
      output["created"] = created;
    }
    if (creator != null) {
      output["creator"] = creator.toJson();
    }
    if (displayTime != null) {
      output["displayTime"] = displayTime;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (html != null) {
      output["html"] = html;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (inReplyTo != null) {
      output["inReplyTo"] = inReplyTo;
    }
    if (isBundleCover != null) {
      output["isBundleCover"] = isBundleCover;
    }
    if (isDeleted != null) {
      output["isDeleted"] = isDeleted;
    }
    if (isPinned != null) {
      output["isPinned"] = isPinned;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (location != null) {
      output["location"] = location.toJson();
    }
    if (menuItems != null) {
      output["menuItems"] = menuItems.map((menuItemsItem) => menuItemsItem.toJson()).toList();
    }
    if (notification != null) {
      output["notification"] = notification.toJson();
    }
    if (pinScore != null) {
      output["pinScore"] = pinScore;
    }
    if (recipients != null) {
      output["recipients"] = recipients.map((recipientsItem) => recipientsItem.toJson()).toList();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (sourceItemId != null) {
      output["sourceItemId"] = sourceItemId;
    }
    if (speakableText != null) {
      output["speakableText"] = speakableText;
    }
    if (speakableType != null) {
      output["speakableType"] = speakableType;
    }
    if (text != null) {
      output["text"] = text;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of TimelineItem */
  core.String toString() => JSON.encode(this.toJson());

}

/** A list of timeline items. This is the response from the server to GET requests on the timeline collection. */
class TimelineListResponse {

  /** Items in the timeline. */
  core.List<TimelineItem> items;

  /** The type of resource. This is always mirror#timeline. */
  core.String kind;

  /** The next page token. Provide this as the pageToken parameter in the request to retrieve the next page of results. */
  core.String nextPageToken;

  /** Create new TimelineListResponse from JSON data */
  TimelineListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new TimelineItem.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for TimelineListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of TimelineListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents an action taken by the user that triggered a notification. */
class UserAction {

  /** An optional payload for the action.

For actions of type CUSTOM, this is the ID of the custom menu item that was selected. */
  core.String payload;

  /** The type of action. The value of this can be:  
- SHARE - the user shared an item. 
- REPLY - the user replied to an item. 
- REPLY_ALL - the user replied to all recipients of an item. 
- CUSTOM - the user selected a custom menu item on the timeline item. 
- DELETE - the user deleted the item. 
- PIN - the user pinned the item. 
- UNPIN - the user unpinned the item. 
- LAUNCH - the user initiated a voice command.  In the future, additional types may be added. UserActions with unrecognized types should be ignored. */
  core.String type;

  /** Create new UserAction from JSON data */
  UserAction.fromJson(core.Map json) {
    if (json.containsKey("payload")) {
      payload = json["payload"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for UserAction */
  core.Map toJson() {
    var output = new core.Map();

    if (payload != null) {
      output["payload"] = payload;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of UserAction */
  core.String toString() => JSON.encode(this.toJson());

}

class UserData {

  core.String key;

  core.String value;

  /** Create new UserData from JSON data */
  UserData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for UserData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of UserData */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
