# SWGAddonApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAddon**](SWGAddonApi.md#addaddon) | **POST** /addon/add | Create a new addon
[**deleteAddon**](SWGAddonApi.md#deleteaddon) | **DELETE** /addon/delete | Delete an addon by ID
[**getAddon**](SWGAddonApi.md#getaddon) | **GET** /addon | Retrieve an addon by ID
[**getAllAddons**](SWGAddonApi.md#getalladdons) | **GET** /addon/all | Retrieve all addons
[**getAllWithTrashedAddons**](SWGAddonApi.md#getallwithtrashedaddons) | **GET** /addon/all-with-trashed | Retrieve all addons including any deleted models
[**updateAddon**](SWGAddonApi.md#updateaddon) | **PUT** /addon/edit | Update an Addon


# **addAddon**
```objc
-(NSNumber*) addAddonWithName: (NSString*) name
    basePrices: (NSNumber*) basePrices
    _description: (NSString*) _description
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error)) handler;
```

Create a new addon

### Example 
```objc

NSString* name = @"name_example"; // Name of the type of addon
NSNumber* basePrices = @789; // Prices for addon
NSString* _description = @"_description_example"; // Description of the addon (optional)

SWGAddonApi*apiInstance = [[SWGAddonApi alloc] init];

// Create a new addon
[apiInstance addAddonWithName:name
              basePrices:basePrices
              _description:_description
          completionHandler: ^(SWGInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAddonApi->addAddon: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the type of addon | 
 **basePrices** | **NSNumber***| Prices for addon | 
 **_description** | **NSString***| Description of the addon | [optional] 

### Return type

[**SWGInlineResponse2002***](SWGInlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAddon**
```objc
-(NSNumber*) deleteAddonWithBody: (NSNumber*) body
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete an addon by ID

### Example 
```objc

NSNumber* body = @789; // ID of the Addon (optional)

SWGAddonApi*apiInstance = [[SWGAddonApi alloc] init];

// Delete an addon by ID
[apiInstance deleteAddonWithBody:body
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAddonApi->deleteAddon: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **NSNumber***| ID of the Addon | [optional] 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddon**
```objc
-(NSNumber*) getAddonWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2001* output, NSError* error)) handler;
```

Retrieve an addon by ID

### Example 
```objc

NSNumber* _id = @789; // ID of the addon to be retrieved

SWGAddonApi*apiInstance = [[SWGAddonApi alloc] init];

// Retrieve an addon by ID
[apiInstance getAddonWithId:_id
          completionHandler: ^(SWGInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAddonApi->getAddon: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of the addon to be retrieved | 

### Return type

[**SWGInlineResponse2001***](SWGInlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAddons**
```objc
-(NSNumber*) getAllAddonsWithCompletionHandler: 
        (void (^)(NSArray<SWGAddon>* output, NSError* error)) handler;
```

Retrieve all addons

### Example 
```objc


SWGAddonApi*apiInstance = [[SWGAddonApi alloc] init];

// Retrieve all addons
[apiInstance getAllAddonsWithCompletionHandler: 
          ^(NSArray<SWGAddon>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAddonApi->getAllAddons: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGAddon>***](SWGAddon.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedAddons**
```objc
-(NSNumber*) getAllWithTrashedAddonsWithCompletionHandler: 
        (void (^)(NSArray<SWGAddon>* output, NSError* error)) handler;
```

Retrieve all addons including any deleted models

### Example 
```objc


SWGAddonApi*apiInstance = [[SWGAddonApi alloc] init];

// Retrieve all addons including any deleted models
[apiInstance getAllWithTrashedAddonsWithCompletionHandler: 
          ^(NSArray<SWGAddon>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAddonApi->getAllWithTrashedAddons: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGAddon>***](SWGAddon.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAddon**
```objc
-(NSNumber*) updateAddonWithId: (NSNumber*) _id
    name: (NSString*) name
    _description: (NSString*) _description
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error)) handler;
```

Update an Addon

Updates the addon by id using the specified fields

### Example 
```objc

NSNumber* _id = @789; // ID of the Addon to be updated
NSString* name = @"name_example"; // Name of the Addon (optional)
NSString* _description = @"_description_example"; // Description of the Addon (optional)

SWGAddonApi*apiInstance = [[SWGAddonApi alloc] init];

// Update an Addon
[apiInstance updateAddonWithId:_id
              name:name
              _description:_description
          completionHandler: ^(SWGInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAddonApi->updateAddon: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of the Addon to be updated | 
 **name** | **NSString***| Name of the Addon | [optional] 
 **_description** | **NSString***| Description of the Addon | [optional] 

### Return type

[**SWGInlineResponse2002***](SWGInlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

