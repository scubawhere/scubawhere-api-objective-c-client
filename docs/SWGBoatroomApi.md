# SWGBoatroomApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBoatroom**](SWGBoatroomApi.md#createboatroom) | **POST** /boatroom/add | Create a new boatroom
[**deleteBoatroom**](SWGBoatroomApi.md#deleteboatroom) | **DELETE** /boatroom/delete | Delete a boatroom by ID
[**editBoatroom**](SWGBoatroomApi.md#editboatroom) | **POST** /boatroom/edit | Update a boatroom by ID
[**getAllBoatrooms**](SWGBoatroomApi.md#getallboatrooms) | **GET** /boatroom/all | Retrieve all boatrooms
[**getAllWithTrashedBoatrooms**](SWGBoatroomApi.md#getallwithtrashedboatrooms) | **GET** /boatroom/all-with-trashed | Retrieve all boatrooms including any deleted models
[**getBoatroom**](SWGBoatroomApi.md#getboatroom) | **GET** /boatroom | Retrieve a boatroom by ID


# **createBoatroom**
```objc
-(NSNumber*) createBoatroomWithName: (NSString*) name
    _description: (NSString*) _description
        completionHandler: (void (^)(SWGInlineResponse2006* output, NSError* error)) handler;
```

Create a new boatroom

### Example 
```objc

NSString* name = @"name_example"; // 
NSString* _description = @"_description_example"; //  (optional)

SWGBoatroomApi*apiInstance = [[SWGBoatroomApi alloc] init];

// Create a new boatroom
[apiInstance createBoatroomWithName:name
              _description:_description
          completionHandler: ^(SWGInlineResponse2006* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatroomApi->createBoatroom: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 
 **_description** | **NSString***|  | [optional] 

### Return type

[**SWGInlineResponse2006***](SWGInlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBoatroom**
```objc
-(NSNumber*) deleteBoatroomWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete a boatroom by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGBoatroomApi*apiInstance = [[SWGBoatroomApi alloc] init];

// Delete a boatroom by ID
[apiInstance deleteBoatroomWithId:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatroomApi->deleteBoatroom: %@", error);
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

# **editBoatroom**
```objc
-(NSNumber*) editBoatroomWithId: (NSNumber*) _id
    name: (NSString*) name
    _description: (NSString*) _description
        completionHandler: (void (^)(SWGInlineResponse2006* output, NSError* error)) handler;
```

Update a boatroom by ID

### Example 
```objc

NSNumber* _id = @789; // 
NSString* name = @"name_example"; // 
NSString* _description = @"_description_example"; //  (optional)

SWGBoatroomApi*apiInstance = [[SWGBoatroomApi alloc] init];

// Update a boatroom by ID
[apiInstance editBoatroomWithId:_id
              name:name
              _description:_description
          completionHandler: ^(SWGInlineResponse2006* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatroomApi->editBoatroom: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 
 **name** | **NSString***|  | 
 **_description** | **NSString***|  | [optional] 

### Return type

[**SWGInlineResponse2006***](SWGInlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllBoatrooms**
```objc
-(NSNumber*) getAllBoatroomsWithCompletionHandler: 
        (void (^)(NSArray<SWGBoatroom>* output, NSError* error)) handler;
```

Retrieve all boatrooms

### Example 
```objc


SWGBoatroomApi*apiInstance = [[SWGBoatroomApi alloc] init];

// Retrieve all boatrooms
[apiInstance getAllBoatroomsWithCompletionHandler: 
          ^(NSArray<SWGBoatroom>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatroomApi->getAllBoatrooms: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGBoatroom>***](SWGBoatroom.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedBoatrooms**
```objc
-(NSNumber*) getAllWithTrashedBoatroomsWithCompletionHandler: 
        (void (^)(NSArray<SWGBoatroom>* output, NSError* error)) handler;
```

Retrieve all boatrooms including any deleted models

### Example 
```objc


SWGBoatroomApi*apiInstance = [[SWGBoatroomApi alloc] init];

// Retrieve all boatrooms including any deleted models
[apiInstance getAllWithTrashedBoatroomsWithCompletionHandler: 
          ^(NSArray<SWGBoatroom>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatroomApi->getAllWithTrashedBoatrooms: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGBoatroom>***](SWGBoatroom.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBoatroom**
```objc
-(NSNumber*) getBoatroomWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2006* output, NSError* error)) handler;
```

Retrieve a boatroom by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGBoatroomApi*apiInstance = [[SWGBoatroomApi alloc] init];

// Retrieve a boatroom by ID
[apiInstance getBoatroomWithId:_id
          completionHandler: ^(SWGInlineResponse2006* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatroomApi->getBoatroom: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse2006***](SWGInlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

