# SWGBoatApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBoat**](SWGBoatApi.md#createboat) | **POST** /boat/add | Create a new boat
[**deleteBoat**](SWGBoatApi.md#deleteboat) | **DELETE** /boat/delete | Delete a boat by ID
[**editBoat**](SWGBoatApi.md#editboat) | **POST** /boat/edit | Update a boat by ID
[**getAllBoats**](SWGBoatApi.md#getallboats) | **GET** /boat/all | Retrieve all boats
[**getAllWithTrashedBoats**](SWGBoatApi.md#getallwithtrashedboats) | **GET** /boat/all-with-trashed | Retrieve all agents including any deleted models
[**getBoat**](SWGBoatApi.md#getboat) | **GET** /boat | Retrieve a boat by ID


# **createBoat**
```objc
-(NSNumber*) createBoatWithName: (NSString*) name
    capacity: (NSNumber*) capacity
    _description: (NSString*) _description
    boatrooms: (NSArray<NSNumber*>*) boatrooms
        completionHandler: (void (^)(SWGInlineResponse2005* output, NSError* error)) handler;
```

Create a new boat

### Example 
```objc

NSString* name = @"name_example"; // 
NSNumber* capacity = @789; // 
NSString* _description = @"_description_example"; //  (optional)
NSArray<NSNumber*>* boatrooms = @[@56]; //  (optional)

SWGBoatApi*apiInstance = [[SWGBoatApi alloc] init];

// Create a new boat
[apiInstance createBoatWithName:name
              capacity:capacity
              _description:_description
              boatrooms:boatrooms
          completionHandler: ^(SWGInlineResponse2005* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatApi->createBoat: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 
 **capacity** | **NSNumber***|  | 
 **_description** | **NSString***|  | [optional] 
 **boatrooms** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 

### Return type

[**SWGInlineResponse2005***](SWGInlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBoat**
```objc
-(NSNumber*) deleteBoatWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete a boat by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGBoatApi*apiInstance = [[SWGBoatApi alloc] init];

// Delete a boat by ID
[apiInstance deleteBoatWithId:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatApi->deleteBoat: %@", error);
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

# **editBoat**
```objc
-(NSNumber*) editBoatWithName: (NSString*) name
    capacity: (NSNumber*) capacity
    _description: (NSString*) _description
    boatrooms: (NSArray<NSNumber*>*) boatrooms
        completionHandler: (void (^)(SWGInlineResponse2004* output, NSError* error)) handler;
```

Update a boat by ID

### Example 
```objc

NSString* name = @"name_example"; // 
NSNumber* capacity = @789; // 
NSString* _description = @"_description_example"; //  (optional)
NSArray<NSNumber*>* boatrooms = @[@56]; //  (optional)

SWGBoatApi*apiInstance = [[SWGBoatApi alloc] init];

// Update a boat by ID
[apiInstance editBoatWithName:name
              capacity:capacity
              _description:_description
              boatrooms:boatrooms
          completionHandler: ^(SWGInlineResponse2004* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatApi->editBoat: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 
 **capacity** | **NSNumber***|  | 
 **_description** | **NSString***|  | [optional] 
 **boatrooms** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 

### Return type

[**SWGInlineResponse2004***](SWGInlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllBoats**
```objc
-(NSNumber*) getAllBoatsWithCompletionHandler: 
        (void (^)(NSArray<SWGBoat>* output, NSError* error)) handler;
```

Retrieve all boats

### Example 
```objc


SWGBoatApi*apiInstance = [[SWGBoatApi alloc] init];

// Retrieve all boats
[apiInstance getAllBoatsWithCompletionHandler: 
          ^(NSArray<SWGBoat>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatApi->getAllBoats: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGBoat>***](SWGBoat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedBoats**
```objc
-(NSNumber*) getAllWithTrashedBoatsWithCompletionHandler: 
        (void (^)(NSArray<SWGBoat>* output, NSError* error)) handler;
```

Retrieve all agents including any deleted models

### Example 
```objc


SWGBoatApi*apiInstance = [[SWGBoatApi alloc] init];

// Retrieve all agents including any deleted models
[apiInstance getAllWithTrashedBoatsWithCompletionHandler: 
          ^(NSArray<SWGBoat>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatApi->getAllWithTrashedBoats: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGBoat>***](SWGBoat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBoat**
```objc
-(NSNumber*) getBoatWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2005* output, NSError* error)) handler;
```

Retrieve a boat by ID

### Example 
```objc

NSNumber* _id = @789; // ID of the boat to be retrieved

SWGBoatApi*apiInstance = [[SWGBoatApi alloc] init];

// Retrieve a boat by ID
[apiInstance getBoatWithId:_id
          completionHandler: ^(SWGInlineResponse2005* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBoatApi->getBoat: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of the boat to be retrieved | 

### Return type

[**SWGInlineResponse2005***](SWGInlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

