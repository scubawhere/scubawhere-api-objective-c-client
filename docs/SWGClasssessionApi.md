# SWGClasssessionApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**classSessionGet**](SWGClasssessionApi.md#classsessionget) | **GET** /class-session | Retrieve a class session by ID
[**createClassSession**](SWGClasssessionApi.md#createclasssession) | **POST** /class-session/add | Create a new class session
[**deleteClasssession**](SWGClasssessionApi.md#deleteclasssession) | **DELETE** /class-session/delete | Delete a class session by ID
[**editClassSession**](SWGClasssessionApi.md#editclasssession) | **POST** /class-session/edit | Update a class session by ID
[**filterClassSession**](SWGClasssessionApi.md#filterclasssession) | **GET** /class-session/filter | Retrieve all class sessions that match a filter
[**getAllClassSessions**](SWGClasssessionApi.md#getallclasssessions) | **GET** /class-session/all | Retrieve all class sessions including any deleted models
[**getAllWithTrashedClassSessions**](SWGClasssessionApi.md#getallwithtrashedclasssessions) | **GET** /class-session/all-with-trashed | Retrieve all class sessions including any deleted models
[**getClassSessionManifest**](SWGClasssessionApi.md#getclasssessionmanifest) | **GET** /class-session/manifest | Retrieve the customer manifest for a class session
[**getTodaysClassSession**](SWGClasssessionApi.md#gettodaysclasssession) | **GET** /class-session/today | Retrieve all class sessions that start today
[**getTommorowsClassSession**](SWGClasssessionApi.md#gettommorowsclasssession) | **GET** /class-session/tommorow | Retrieve all class sessions that start tommorow


# **classSessionGet**
```objc
-(NSNumber*) classSessionGetWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGTrainingSession* output, NSError* error)) handler;
```

Retrieve a class session by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGClasssessionApi*apiInstance = [[SWGClasssessionApi alloc] init];

// Retrieve a class session by ID
[apiInstance classSessionGetWithId:_id
          completionHandler: ^(SWGTrainingSession* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClasssessionApi->classSessionGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGTrainingSession***](SWGTrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createClassSession**
```objc
-(NSNumber*) createClassSessionWithStart: (NSDate*) start
    trainingId: (NSNumber*) trainingId
        completionHandler: (void (^)(SWGInlineResponse20019* output, NSError* error)) handler;
```

Create a new class session

### Example 
```objc

NSDate* start = @"2013-10-20"; // 
NSNumber* trainingId = @789; // 

SWGClasssessionApi*apiInstance = [[SWGClasssessionApi alloc] init];

// Create a new class session
[apiInstance createClassSessionWithStart:start
              trainingId:trainingId
          completionHandler: ^(SWGInlineResponse20019* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClasssessionApi->createClassSession: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **NSDate***|  | 
 **trainingId** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse20019***](SWGInlineResponse20019.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClasssession**
```objc
-(NSNumber*) deleteClasssessionWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete a class session by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGClasssessionApi*apiInstance = [[SWGClasssessionApi alloc] init];

// Delete a class session by ID
[apiInstance deleteClasssessionWithId:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClasssessionApi->deleteClasssession: %@", error);
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

# **editClassSession**
```objc
-(NSNumber*) editClassSessionWithId: (NSNumber*) _id
    start: (NSDate*) start
        completionHandler: (void (^)(SWGInlineResponse20020* output, NSError* error)) handler;
```

Update a class session by ID

### Example 
```objc

NSNumber* _id = @56; // 
NSDate* start = @"2013-10-20"; // 

SWGClasssessionApi*apiInstance = [[SWGClasssessionApi alloc] init];

// Update a class session by ID
[apiInstance editClassSessionWithId:_id
              start:start
          completionHandler: ^(SWGInlineResponse20020* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClasssessionApi->editClassSession: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 
 **start** | **NSDate***|  | 

### Return type

[**SWGInlineResponse20020***](SWGInlineResponse20020.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterClassSession**
```objc
-(NSNumber*) filterClassSessionWithCompletionHandler: 
        (void (^)(NSArray<SWGTrainingSession>* output, NSError* error)) handler;
```

Retrieve all class sessions that match a filter

### Example 
```objc


SWGClasssessionApi*apiInstance = [[SWGClasssessionApi alloc] init];

// Retrieve all class sessions that match a filter
[apiInstance filterClassSessionWithCompletionHandler: 
          ^(NSArray<SWGTrainingSession>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClasssessionApi->filterClassSession: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTrainingSession>***](SWGTrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllClassSessions**
```objc
-(NSNumber*) getAllClassSessionsWithCompletionHandler: 
        (void (^)(NSArray<SWGTrainingSession>* output, NSError* error)) handler;
```

Retrieve all class sessions including any deleted models

### Example 
```objc


SWGClasssessionApi*apiInstance = [[SWGClasssessionApi alloc] init];

// Retrieve all class sessions including any deleted models
[apiInstance getAllClassSessionsWithCompletionHandler: 
          ^(NSArray<SWGTrainingSession>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClasssessionApi->getAllClassSessions: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTrainingSession>***](SWGTrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedClassSessions**
```objc
-(NSNumber*) getAllWithTrashedClassSessionsWithCompletionHandler: 
        (void (^)(NSArray<SWGTrainingSession>* output, NSError* error)) handler;
```

Retrieve all class sessions including any deleted models

### Example 
```objc


SWGClasssessionApi*apiInstance = [[SWGClasssessionApi alloc] init];

// Retrieve all class sessions including any deleted models
[apiInstance getAllWithTrashedClassSessionsWithCompletionHandler: 
          ^(NSArray<SWGTrainingSession>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClasssessionApi->getAllWithTrashedClassSessions: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTrainingSession>***](SWGTrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClassSessionManifest**
```objc
-(NSNumber*) getClassSessionManifestWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGTrainingSessionManifest* output, NSError* error)) handler;
```

Retrieve the customer manifest for a class session

### Example 
```objc

NSNumber* _id = @789; // 

SWGClasssessionApi*apiInstance = [[SWGClasssessionApi alloc] init];

// Retrieve the customer manifest for a class session
[apiInstance getClassSessionManifestWithId:_id
          completionHandler: ^(SWGTrainingSessionManifest* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClasssessionApi->getClassSessionManifest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGTrainingSessionManifest***](SWGTrainingSessionManifest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTodaysClassSession**
```objc
-(NSNumber*) getTodaysClassSessionWithCompletionHandler: 
        (void (^)(NSArray<SWGTrainingSession>* output, NSError* error)) handler;
```

Retrieve all class sessions that start today

### Example 
```objc


SWGClasssessionApi*apiInstance = [[SWGClasssessionApi alloc] init];

// Retrieve all class sessions that start today
[apiInstance getTodaysClassSessionWithCompletionHandler: 
          ^(NSArray<SWGTrainingSession>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClasssessionApi->getTodaysClassSession: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTrainingSession>***](SWGTrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTommorowsClassSession**
```objc
-(NSNumber*) getTommorowsClassSessionWithCompletionHandler: 
        (void (^)(NSArray<SWGTrainingSession>* output, NSError* error)) handler;
```

Retrieve all class sessions that start tommorow

### Example 
```objc


SWGClasssessionApi*apiInstance = [[SWGClasssessionApi alloc] init];

// Retrieve all class sessions that start tommorow
[apiInstance getTommorowsClassSessionWithCompletionHandler: 
          ^(NSArray<SWGTrainingSession>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClasssessionApi->getTommorowsClassSession: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTrainingSession>***](SWGTrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

