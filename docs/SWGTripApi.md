# SWGTripApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTrip**](SWGTripApi.md#createtrip) | **POST** /trip/add | Create a new trip
[**deleteTrip**](SWGTripApi.md#deletetrip) | **DELETE** /trip/delete | Delete a trip by ID
[**editTrip**](SWGTripApi.md#edittrip) | **POST** /trip/edit | Update a trip by ID
[**getAllTrips**](SWGTripApi.md#getalltrips) | **GET** /trip/all | Retrieve all trips including any deleted models
[**getAllWithTrashedTrips**](SWGTripApi.md#getallwithtrashedtrips) | **GET** /trip/all-with-trashed | Retrieve all trips including any deleted models
[**tripGet**](SWGTripApi.md#tripget) | **GET** /trip | Retrieve a trip by ID


# **createTrip**
```objc
-(NSNumber*) createTripWithName: (NSString*) name
    duration: (NSNumber*) duration
    locations: (NSArray<NSNumber*>*) locations
    tags: (NSArray<NSNumber*>*) tags
    _description: (NSString*) _description
    boatRequired: (NSNumber*) boatRequired
        completionHandler: (void (^)(SWGInlineResponse20046* output, NSError* error)) handler;
```

Create a new trip

### Example 
```objc

NSString* name = @"name_example"; // 
NSNumber* duration = @3.4; // 
NSArray<NSNumber*>* locations = @[@56]; // 
NSArray<NSNumber*>* tags = @[@56]; // 
NSString* _description = @"_description_example"; //  (optional)
NSNumber* boatRequired = @true; //  (optional)

SWGTripApi*apiInstance = [[SWGTripApi alloc] init];

// Create a new trip
[apiInstance createTripWithName:name
              duration:duration
              locations:locations
              tags:tags
              _description:_description
              boatRequired:boatRequired
          completionHandler: ^(SWGInlineResponse20046* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTripApi->createTrip: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 
 **duration** | **NSNumber***|  | 
 **locations** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | 
 **tags** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | 
 **_description** | **NSString***|  | [optional] 
 **boatRequired** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20046***](SWGInlineResponse20046.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTrip**
```objc
-(NSNumber*) deleteTripWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete a trip by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGTripApi*apiInstance = [[SWGTripApi alloc] init];

// Delete a trip by ID
[apiInstance deleteTripWithId:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTripApi->deleteTrip: %@", error);
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

# **editTrip**
```objc
-(NSNumber*) editTripWithId: (NSNumber*) _id
    name: (NSString*) name
    duration: (NSNumber*) duration
    locations: (NSArray<NSNumber*>*) locations
    tags: (NSArray<NSNumber*>*) tags
    _description: (NSString*) _description
    boatRequired: (NSNumber*) boatRequired
        completionHandler: (void (^)(SWGInlineResponse20047* output, NSError* error)) handler;
```

Update a trip by ID

### Example 
```objc

NSNumber* _id = @789; // 
NSString* name = @"name_example"; // 
NSNumber* duration = @3.4; // 
NSArray<NSNumber*>* locations = @[@56]; // 
NSArray<NSNumber*>* tags = @[@56]; // 
NSString* _description = @"_description_example"; //  (optional)
NSNumber* boatRequired = @true; //  (optional)

SWGTripApi*apiInstance = [[SWGTripApi alloc] init];

// Update a trip by ID
[apiInstance editTripWithId:_id
              name:name
              duration:duration
              locations:locations
              tags:tags
              _description:_description
              boatRequired:boatRequired
          completionHandler: ^(SWGInlineResponse20047* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTripApi->editTrip: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 
 **name** | **NSString***|  | 
 **duration** | **NSNumber***|  | 
 **locations** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | 
 **tags** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | 
 **_description** | **NSString***|  | [optional] 
 **boatRequired** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20047***](SWGInlineResponse20047.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTrips**
```objc
-(NSNumber*) getAllTripsWithCompletionHandler: 
        (void (^)(NSArray<SWGTrip>* output, NSError* error)) handler;
```

Retrieve all trips including any deleted models

### Example 
```objc


SWGTripApi*apiInstance = [[SWGTripApi alloc] init];

// Retrieve all trips including any deleted models
[apiInstance getAllTripsWithCompletionHandler: 
          ^(NSArray<SWGTrip>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTripApi->getAllTrips: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTrip>***](SWGTrip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedTrips**
```objc
-(NSNumber*) getAllWithTrashedTripsWithCompletionHandler: 
        (void (^)(NSArray<SWGTrip>* output, NSError* error)) handler;
```

Retrieve all trips including any deleted models

### Example 
```objc


SWGTripApi*apiInstance = [[SWGTripApi alloc] init];

// Retrieve all trips including any deleted models
[apiInstance getAllWithTrashedTripsWithCompletionHandler: 
          ^(NSArray<SWGTrip>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTripApi->getAllWithTrashedTrips: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTrip>***](SWGTrip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tripGet**
```objc
-(NSNumber*) tripGetWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGTrip* output, NSError* error)) handler;
```

Retrieve a trip by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGTripApi*apiInstance = [[SWGTripApi alloc] init];

// Retrieve a trip by ID
[apiInstance tripGetWithId:_id
          completionHandler: ^(SWGTrip* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTripApi->tripGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGTrip***](SWGTrip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

