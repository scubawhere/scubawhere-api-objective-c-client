# SWGLocationApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachLocation**](SWGLocationApi.md#attachlocation) | **POST** /location/attach | Attach a location to a company
[**createLocation**](SWGLocationApi.md#createlocation) | **POST** /location/add | Create a location
[**dettachLocation**](SWGLocationApi.md#dettachlocation) | **POST** /location/dettach | Dettach a location to a company
[**getAllLocations**](SWGLocationApi.md#getalllocations) | **GET** /location/all | Retrieve all locations associated with the company
[**getLocationTags**](SWGLocationApi.md#getlocationtags) | **GET** /location/tags | Retrieve all tags associated to all locations
[**updateLocation**](SWGLocationApi.md#updatelocation) | **PUT** /location/edit | Update a location


# **attachLocation**
```objc
-(NSNumber*) attachLocationWithLocationId: (NSNumber*) locationId
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Attach a location to a company

### Example 
```objc

NSNumber* locationId = @789; // 

SWGLocationApi*apiInstance = [[SWGLocationApi alloc] init];

// Attach a location to a company
[apiInstance attachLocationWithLocationId:locationId
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLocationApi->attachLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createLocation**
```objc
-(NSNumber*) createLocationWithName: (NSString*) name
    _description: (NSString*) _description
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    tags: (NSArray<NSNumber*>*) tags
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Create a location

### Example 
```objc

NSString* name = @"name_example"; // 
NSString* _description = @"_description_example"; //  (optional)
NSNumber* latitude = @3.4; //  (optional)
NSNumber* longitude = @3.4; //  (optional)
NSArray<NSNumber*>* tags = @[@56]; //  (optional)

SWGLocationApi*apiInstance = [[SWGLocationApi alloc] init];

// Create a location
[apiInstance createLocationWithName:name
              _description:_description
              latitude:latitude
              longitude:longitude
              tags:tags
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLocationApi->createLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 
 **_description** | **NSString***|  | [optional] 
 **latitude** | **NSNumber***|  | [optional] 
 **longitude** | **NSNumber***|  | [optional] 
 **tags** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dettachLocation**
```objc
-(NSNumber*) dettachLocationWithLocationId: (NSNumber*) locationId
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Dettach a location to a company

### Example 
```objc

NSNumber* locationId = @789; // 

SWGLocationApi*apiInstance = [[SWGLocationApi alloc] init];

// Dettach a location to a company
[apiInstance dettachLocationWithLocationId:locationId
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLocationApi->dettachLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllLocations**
```objc
-(NSNumber*) getAllLocationsWithCompletionHandler: 
        (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Retrieve all locations associated with the company

### Example 
```objc


SWGLocationApi*apiInstance = [[SWGLocationApi alloc] init];

// Retrieve all locations associated with the company
[apiInstance getAllLocationsWithCompletionHandler: 
          ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLocationApi->getAllLocations: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocationTags**
```objc
-(NSNumber*) getLocationTagsWithCompletionHandler: 
        (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Retrieve all tags associated to all locations

### Example 
```objc


SWGLocationApi*apiInstance = [[SWGLocationApi alloc] init];

// Retrieve all tags associated to all locations
[apiInstance getLocationTagsWithCompletionHandler: 
          ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLocationApi->getLocationTags: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLocation**
```objc
-(NSNumber*) updateLocationWithLocationId: (NSNumber*) locationId
    _description: (NSNumber*) _description
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Update a location

### Example 
```objc

NSNumber* locationId = @789; // 
NSNumber* _description = @789; // 

SWGLocationApi*apiInstance = [[SWGLocationApi alloc] init];

// Update a location
[apiInstance updateLocationWithLocationId:locationId
              _description:_description
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLocationApi->updateLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSNumber***|  | 
 **_description** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

