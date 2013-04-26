part of mirror_v1_api_client;

class ContactsResource_ extends Resource {

  ContactsResource_(Client client) : super(client) {
  }

  /**
   * Deletes a contact.
   *
   * [id] - The ID of the contact.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "contacts/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Gets a single contact by ID.
   *
   * [id] - The ID of the contact.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Contact> get(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "contacts/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Contact.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Inserts a new contact.
   *
   * [request] - Contact to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Contact> insert(Contact request, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "contacts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Contact.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of contacts for the authenticated user.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ContactsListResponse> list({core.Map optParams}) {
    var completer = new async.Completer();
    var url = "contacts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ContactsListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a contact in place. This method supports patch semantics.
   *
   * [request] - Contact to send in this request
   *
   * [id] - The ID of the contact.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Contact> patch(Contact request, core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "contacts/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Contact.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a contact in place.
   *
   * [request] - Contact to send in this request
   *
   * [id] - The ID of the contact.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Contact> update(Contact request, core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "contacts/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Contact.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class LocationsResource_ extends Resource {

  LocationsResource_(Client client) : super(client) {
  }

  /**
   * Gets a single location by ID.
   *
   * [id] - The ID of the location or latest for the last known location.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Location> get(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "locations/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Location.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of locations for the user.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LocationsListResponse> list({core.Map optParams}) {
    var completer = new async.Completer();
    var url = "locations";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LocationsListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class SubscriptionsResource_ extends Resource {

  SubscriptionsResource_(Client client) : super(client) {
  }

  /**
   * Deletes a subscription.
   *
   * [id] - The ID of the subscription.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "subscriptions/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a new subscription.
   *
   * [request] - Subscription to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Subscription> insert(Subscription request, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "subscriptions";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Subscription.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of subscriptions for the authenticated user and service.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SubscriptionsListResponse> list({core.Map optParams}) {
    var completer = new async.Completer();
    var url = "subscriptions";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SubscriptionsListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an existing subscription in place.
   *
   * [request] - Subscription to send in this request
   *
   * [id] - The ID of the subscription.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Subscription> update(Subscription request, core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "subscriptions/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Subscription.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TimelineResource_ extends Resource {

  TimelineAttachmentsResource_ _attachments;
  TimelineAttachmentsResource_ get attachments => _attachments;

  TimelineResource_(Client client) : super(client) {
  _attachments = new TimelineAttachmentsResource_(client);
  }

  /**
   * Deletes a timeline item.
   *
   * [id] - The ID of the timeline item.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "timeline/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Gets a single timeline item by ID.
   *
   * [id] - The ID of the timeline item.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TimelineItem> get(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "timeline/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TimelineItem.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Inserts a new item into the timeline.
   *
   * [request] - TimelineItem to send in this request
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TimelineItem> insert(TimelineItem request, {core.String content, core.String contentType, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "timeline";
    var uploadUrl = "/upload/mirror/v1/timeline";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new TimelineItem.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of timeline items for the authenticated user.
   *
   * [bundleId] - If provided, only items with the given bundleId will be returned.
   *
   * [includeDeleted] - If true, tombstone records for deleted items will be returned.
   *
   * [maxResults] - The maximum number of items to include in the response, used for paging.
   *
   * [orderBy] - Controls the order in which timeline items are returned.
   *   Allowed values:
   *     displayTime - Results will be ordered by displayTime (default). This is the same ordering as is used in the timeline on the device.
   *     writeTime - Results will be ordered by the time at which they were last written to the data store.
   *
   * [pageToken] - Token for the page of results to return.
   *
   * [pinnedOnly] - If true, only pinned items will be returned.
   *
   * [sourceItemId] - If provided, only items with the given sourceItemId will be returned.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TimelineListResponse> list({core.String bundleId, core.bool includeDeleted, core.int maxResults, core.String orderBy, core.String pageToken, core.bool pinnedOnly, core.String sourceItemId, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "timeline";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bundleId != null) queryParams["bundleId"] = bundleId;
    if (includeDeleted != null) queryParams["includeDeleted"] = includeDeleted;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["displayTime", "writeTime"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: displayTime, writeTime");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (pinnedOnly != null) queryParams["pinnedOnly"] = pinnedOnly;
    if (sourceItemId != null) queryParams["sourceItemId"] = sourceItemId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TimelineListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a timeline item in place. This method supports patch semantics.
   *
   * [request] - TimelineItem to send in this request
   *
   * [id] - The ID of the timeline item.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TimelineItem> patch(TimelineItem request, core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "timeline/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TimelineItem.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a timeline item in place.
   *
   * [request] - TimelineItem to send in this request
   *
   * [id] - The ID of the timeline item.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TimelineItem> update(TimelineItem request, core.String id, {core.String content, core.String contentType, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "timeline/{id}";
    var uploadUrl = "/upload/mirror/v1/timeline/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "PUT", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new TimelineItem.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TimelineAttachmentsResource_ extends Resource {

  TimelineAttachmentsResource_(Client client) : super(client) {
  }

  /**
   * Deletes an attachment from a timeline item.
   *
   * [itemId] - The ID of the timeline item the attachment belongs to.
   *
   * [attachmentId] - The ID of the attachment.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String itemId, core.String attachmentId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "timeline/{itemId}/attachments/{attachmentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (attachmentId == null) paramErrors.add("attachmentId is required");
    if (attachmentId != null) urlParams["attachmentId"] = attachmentId;
    if (itemId == null) paramErrors.add("itemId is required");
    if (itemId != null) urlParams["itemId"] = itemId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves an attachment on a timeline item by item ID and attachment ID.
   *
   * [itemId] - The ID of the timeline item the attachment belongs to.
   *
   * [attachmentId] - The ID of the attachment.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Attachment> get(core.String itemId, core.String attachmentId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "timeline/{itemId}/attachments/{attachmentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (attachmentId == null) paramErrors.add("attachmentId is required");
    if (attachmentId != null) urlParams["attachmentId"] = attachmentId;
    if (itemId == null) paramErrors.add("itemId is required");
    if (itemId != null) urlParams["itemId"] = itemId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Attachment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Adds a new attachment to a timeline item.
   *
   * [itemId] - The ID of the timeline item the attachment belongs to.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Attachment> insert(core.String itemId, {core.String content, core.String contentType, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "timeline/{itemId}/attachments";
    var uploadUrl = "/upload/mirror/v1/timeline/{itemId}/attachments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (itemId == null) paramErrors.add("itemId is required");
    if (itemId != null) urlParams["itemId"] = itemId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new Attachment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns a list of attachments for a timeline item.
   *
   * [itemId] - The ID of the timeline item whose attachments should be listed.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AttachmentsListResponse> list(core.String itemId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "timeline/{itemId}/attachments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (itemId == null) paramErrors.add("itemId is required");
    if (itemId != null) urlParams["itemId"] = itemId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AttachmentsListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

