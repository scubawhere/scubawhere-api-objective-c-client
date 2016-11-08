# SWGSessionApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSession**](SWGSessionApi.md#createsession) | **POST** /session/add | Create a new session
[**deleteSession**](SWGSessionApi.md#deletesession) | **DELETE** /session/delete | Delete a session by ID
[**editSession**](SWGSessionApi.md#editsession) | **POST** /session/edit | Update a session by ID
[**filterSessions**](SWGSessionApi.md#filtersessions) | **GET** /session/filter | Retrieve all of tsessions that match a filter
[**getAllSessions**](SWGSessionApi.md#getallsessions) | **GET** /session/all | Retrieve all sessions including any deleted models
[**getAllWithTrashedSessions**](SWGSessionApi.md#getallwithtrashedsessions) | **GET** /session/all-with-trashed | Retrieve all sessions including any deleted models
[**getManifest**](SWGSessionApi.md#getmanifest) | **GET** /session/manifest | Retrieve the customer manifest for this session
[**getSession**](SWGSessionApi.md#getsession) | **GET** /session | Retrieve a session by ID
[**getTodaySessions**](SWGSessionApi.md#gettodaysessions) | **GET** /session/today | Retrieve all of todays sessions
[**getTommorowSessions**](SWGSessionApi.md#gettommorowsessions) | **GET** /session/tommorow | Retrieve all of tommorows sessions


# **createSession**
```objc
-(NSNumber*) createSessionWithStart: (NSDate*) start
    boatId: (NSNumber*) boatId
    tripId: (NSNumber*) tripId
        completionHandler: (void (^)(SWGInlineResponse20043* output, NSError* error)) handler;
```

Create a new session

### Example 
```objc

NSDate* start = @"2013-10-20"; // 
NSNumber* boatId = @789; //  (optional)
NSNumber* tripId = @789; //  (optional)

SWGSessionApi*apiInstance = [[SWGSessionApi alloc] init];

// Create a new session
[apiInstance createSessionWithStart:start
              boatId:boatId
              tripId:tripId
          completionHandler: ^(SWGInlineResponse20043* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSessionApi->createSession: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **NSDate***|  | 
 **boatId** | **NSNumber***|  | [optional] 
 **tripId** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20043***](SWGInlineResponse20043.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSession**
```objc
-(NSNumber*) deleteSessionWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete a session by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGSessionApi*apiInstance = [[SWGSessionApi alloc] init];

// Delete a session by ID
[apiInstance deleteSessionWithId:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSessionApi->deleteSession: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editSession**
```objc
-(NSNumber*) editSessionWithId: (NSNumber*) _id
    start: (NSDate*) start
    boatId: (NSNumber*) boatId
        completionHandler: (void (^)(SWGInlineResponse20044* output, NSError* error)) handler;
```

Update a session by ID

### Example 
```objc

NSNumber* _id = @789; // 
NSDate* start = @"2013-10-20"; // 
NSNumber* boatId = @789; //  (optional)

SWGSessionApi*apiInstance = [[SWGSessionApi alloc] init];

// Update a session by ID
[apiInstance editSessionWithId:_id
              start:start
              boatId:boatId
          completionHandler: ^(SWGInlineResponse20044* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSessionApi->editSession: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 
 **start** | **NSDate***|  | 
 **boatId** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20044***](SWGInlineResponse20044.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterSessions**
```objc
-(NSNumber*) filterSessionsWithAfter: (NSDate*) after
    before: (NSDate*) before
    tripId: (NSNumber*) tripId
    ticketId: (NSNumber*) ticketId
    packageId: (NSNumber*) packageId
    courseId: (NSNumber*) courseId
        completionHandler: (void (^)(SWGInlineResponse20045* output, NSError* error)) handler;
```

Retrieve all of tsessions that match a filter

### Example 
```objc

NSDate* after = @"2013-10-20"; //  (optional)
NSDate* before = @"2013-10-20"; //  (optional)
NSNumber* tripId = @789; //  (optional)
NSNumber* ticketId = @789; //  (optional)
NSNumber* packageId = @789; //  (optional)
NSNumber* courseId = @789; //  (optional)

SWGSessionApi*apiInstance = [[SWGSessionApi alloc] init];

// Retrieve all of tsessions that match a filter
[apiInstance filterSessionsWithAfter:after
              before:before
              tripId:tripId
              ticketId:ticketId
              packageId:packageId
              courseId:courseId
          completionHandler: ^(SWGInlineResponse20045* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSessionApi->filterSessions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 
 **tripId** | **NSNumber***|  | [optional] 
 **ticketId** | **NSNumber***|  | [optional] 
 **packageId** | **NSNumber***|  | [optional] 
 **courseId** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20045***](SWGInlineResponse20045.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSessions**
```objc
-(NSNumber*) getAllSessionsWithCompletionHandler: 
        (void (^)(NSArray<SWGSession>* output, NSError* error)) handler;
```

Retrieve all sessions including any deleted models

### Example 
```objc


SWGSessionApi*apiInstance = [[SWGSessionApi alloc] init];

// Retrieve all sessions including any deleted models
[apiInstance getAllSessionsWithCompletionHandler: 
          ^(NSArray<SWGSession>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSessionApi->getAllSessions: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGSession>***](SWGSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedSessions**
```objc
-(NSNumber*) getAllWithTrashedSessionsWithCompletionHandler: 
        (void (^)(NSArray<SWGSession>* output, NSError* error)) handler;
```

Retrieve all sessions including any deleted models

### Example 
```objc


SWGSessionApi*apiInstance = [[SWGSessionApi alloc] init];

// Retrieve all sessions including any deleted models
[apiInstance getAllWithTrashedSessionsWithCompletionHandler: 
          ^(NSArray<SWGSession>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSessionApi->getAllWithTrashedSessions: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGSession>***](SWGSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getManifest**
```objc
-(NSNumber*) getManifestWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse20043* output, NSError* error)) handler;
```

Retrieve the customer manifest for this session

### Example 
```objc

NSNumber* _id = @789; // 

SWGSessionApi*apiInstance = [[SWGSessionApi alloc] init];

// Retrieve the customer manifest for this session
[apiInstance getManifestWithId:_id
          completionHandler: ^(SWGInlineResponse20043* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSessionApi->getManifest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse20043***](SWGInlineResponse20043.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSession**
```objc
-(NSNumber*) getSessionWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse20043* output, NSError* error)) handler;
```

Retrieve a session by ID

### Example 
```objc

NSNumber* _id = @789; //  (optional)

SWGSessionApi*apiInstance = [[SWGSessionApi alloc] init];

// Retrieve a session by ID
[apiInstance getSessionWithId:_id
          completionHandler: ^(SWGInlineResponse20043* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSessionApi->getSession: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20043***](SWGInlineResponse20043.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTodaySessions**
```objc
-(NSNumber*) getTodaySessionsWithCompletionHandler: 
        (void (^)(SWGInlineResponse20045* output, NSError* error)) handler;
```

Retrieve all of todays sessions

### Example 
```objc


SWGSessionApi*apiInstance = [[SWGSessionApi alloc] init];

// Retrieve all of todays sessions
[apiInstance getTodaySessionsWithCompletionHandler: 
          ^(SWGInlineResponse20045* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSessionApi->getTodaySessions: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGInlineResponse20045***](SWGInlineResponse20045.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTommorowSessions**
```objc
-(NSNumber*) getTommorowSessionsWithCompletionHandler: 
        (void (^)(SWGInlineResponse20045* output, NSError* error)) handler;
```

Retrieve all of tommorows sessions

### Example 
```objc


SWGSessionApi*apiInstance = [[SWGSessionApi alloc] init];

// Retrieve all of tommorows sessions
[apiInstance getTommorowSessionsWithCompletionHandler: 
          ^(SWGInlineResponse20045* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSessionApi->getTommorowSessions: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGInlineResponse20045***](SWGInlineResponse20045.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

