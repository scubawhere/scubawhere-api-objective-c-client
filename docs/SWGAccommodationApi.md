# SWGAccommodationApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAccommodation**](SWGAccommodationApi.md#addaccommodation) | **POST** /accommodation/add | 
[**deleteAccommodation**](SWGAccommodationApi.md#deleteaccommodation) | **DELETE** /accommodation/delete | Delete an accommodation by ID
[**editAgent**](SWGAccommodationApi.md#editagent) | **POST** /agent/edit | Create a new agent
[**filterAccommodation**](SWGAccommodationApi.md#filteraccommodation) | **GET** /accommodation/filter | Get all the accommodations matching a filter
[**findAccommodation**](SWGAccommodationApi.md#findaccommodation) | **GET** /accommodation | 
[**getAllAccommodations**](SWGAccommodationApi.md#getallaccommodations) | **GET** /accommodations/all | 
[**getAllWithTrashedAccommodations**](SWGAccommodationApi.md#getallwithtrashedaccommodations) | **GET** /accommodations/all-with-trashed | Retrieve all accommodation including any deleted models
[**updateAccommodation**](SWGAccommodationApi.md#updateaccommodation) | **PUT** /accommodation/edit | Update an Accommodation


# **addAccommodation**
```objc
-(NSNumber*) addAccommodationWithName: (NSString*) name
    capacity: (NSNumber*) capacity
    basePrices: (NSNumber*) basePrices
    _description: (NSString*) _description
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler;
```



Create an accommodation

### Example 
```objc

NSString* name = @"name_example"; // Name of the type of accommodation
NSNumber* capacity = @789; // Number of beds in the accommodation
NSNumber* basePrices = @56; // Price of the accommodation and the dates of when the price is applicable
NSString* _description = @"_description_example"; // Description of the accommodation (optional)

SWGAccommodationApi*apiInstance = [[SWGAccommodationApi alloc] init];

[apiInstance addAccommodationWithName:name
              capacity:capacity
              basePrices:basePrices
              _description:_description
          completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccommodationApi->addAccommodation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the type of accommodation | 
 **capacity** | **NSNumber***| Number of beds in the accommodation | 
 **basePrices** | **NSNumber***| Price of the accommodation and the dates of when the price is applicable | 
 **_description** | **NSString***| Description of the accommodation | [optional] 

### Return type

[**SWGInlineResponse200***](SWGInlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccommodation**
```objc
-(NSNumber*) deleteAccommodationWithBody: (NSNumber*) body
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler;
```

Delete an accommodation by ID

### Example 
```objc

NSNumber* body = @789; // ID of the accommodation

SWGAccommodationApi*apiInstance = [[SWGAccommodationApi alloc] init];

// Delete an accommodation by ID
[apiInstance deleteAccommodationWithBody:body
          completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccommodationApi->deleteAccommodation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **NSNumber***| ID of the accommodation | 

### Return type

[**SWGInlineResponse200***](SWGInlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editAgent**
```objc
-(NSNumber*) editAgentWithId: (NSNumber*) _id
    name: (NSNumber*) name
    branchName: (NSString*) branchName
    branchAddress: (NSString*) branchAddress
    branchPhone: (NSString*) branchPhone
    branchEmail: (NSString*) branchEmail
    commission: (NSNumber*) commission
    terms: (NSString*) terms
    website: (NSString*) website
    billingAddress: (NSString*) billingAddress
    billingPhone: (NSString*) billingPhone
    billingEmail: (NSString*) billingEmail
        completionHandler: (void (^)(SWGInlineResponse2004* output, NSError* error)) handler;
```

Create a new agent

### Example 
```objc

NSNumber* _id = @789; // 
NSNumber* name = @789; // 
NSString* branchName = @"branchName_example"; // 
NSString* branchAddress = @"branchAddress_example"; // 
NSString* branchPhone = @"branchPhone_example"; // 
NSString* branchEmail = @"branchEmail_example"; // 
NSNumber* commission = @3.4; // 
NSString* terms = @"terms_example"; // 
NSString* website = @"website_example"; //  (optional)
NSString* billingAddress = @"billingAddress_example"; //  (optional)
NSString* billingPhone = @"billingPhone_example"; //  (optional)
NSString* billingEmail = @"billingEmail_example"; //  (optional)

SWGAccommodationApi*apiInstance = [[SWGAccommodationApi alloc] init];

// Create a new agent
[apiInstance editAgentWithId:_id
              name:name
              branchName:branchName
              branchAddress:branchAddress
              branchPhone:branchPhone
              branchEmail:branchEmail
              commission:commission
              terms:terms
              website:website
              billingAddress:billingAddress
              billingPhone:billingPhone
              billingEmail:billingEmail
          completionHandler: ^(SWGInlineResponse2004* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccommodationApi->editAgent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 
 **name** | **NSNumber***|  | 
 **branchName** | **NSString***|  | 
 **branchAddress** | **NSString***|  | 
 **branchPhone** | **NSString***|  | 
 **branchEmail** | **NSString***|  | 
 **commission** | **NSNumber***|  | 
 **terms** | **NSString***|  | 
 **website** | **NSString***|  | [optional] 
 **billingAddress** | **NSString***|  | [optional] 
 **billingPhone** | **NSString***|  | [optional] 
 **billingEmail** | **NSString***|  | [optional] 

### Return type

[**SWGInlineResponse2004***](SWGInlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterAccommodation**
```objc
-(NSNumber*) filterAccommodationWithBefore: (NSDate*) before
    after: (NSDate*) after
    accommodationId: (NSNumber*) accommodationId
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler;
```

Get all the accommodations matching a filter

Get all the accommodations and their bookings between certain dates and / or an accommodation id

### Example 
```objc

NSDate* before = @"2013-10-20"; // The date for the upper boundary of the dates (optional)
NSDate* after = @"2013-10-20"; // The date for the lower boundary of the dates (optional)
NSNumber* accommodationId = @789; // ID Accommodation to filter by (optional)

SWGAccommodationApi*apiInstance = [[SWGAccommodationApi alloc] init];

// Get all the accommodations matching a filter
[apiInstance filterAccommodationWithBefore:before
              after:after
              accommodationId:accommodationId
          completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccommodationApi->filterAccommodation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **NSDate***| The date for the upper boundary of the dates | [optional] 
 **after** | **NSDate***| The date for the lower boundary of the dates | [optional] 
 **accommodationId** | **NSNumber***| ID Accommodation to filter by | [optional] 

### Return type

[**SWGInlineResponse200***](SWGInlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAccommodation**
```objc
-(NSNumber*) findAccommodationWithId: (NSArray<NSNumber*>*) _id
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler;
```



Retrieve an accommodation by ID

### Example 
```objc

NSArray<NSNumber*>* _id = @[@56]; // ID of the accommodation to be retrieved

SWGAccommodationApi*apiInstance = [[SWGAccommodationApi alloc] init];

[apiInstance findAccommodationWithId:_id
          completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccommodationApi->findAccommodation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)| ID of the accommodation to be retrieved | 

### Return type

[**SWGInlineResponse200***](SWGInlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAccommodations**
```objc
-(NSNumber*) getAllAccommodationsWithCompletionHandler: 
        (void (^)(NSArray<SWGAccommodation>* output, NSError* error)) handler;
```



Retrieve all accommodation

### Example 
```objc


SWGAccommodationApi*apiInstance = [[SWGAccommodationApi alloc] init];

[apiInstance getAllAccommodationsWithCompletionHandler: 
          ^(NSArray<SWGAccommodation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccommodationApi->getAllAccommodations: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGAccommodation>***](SWGAccommodation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedAccommodations**
```objc
-(NSNumber*) getAllWithTrashedAccommodationsWithCompletionHandler: 
        (void (^)(NSArray<SWGAccommodation>* output, NSError* error)) handler;
```

Retrieve all accommodation including any deleted models

### Example 
```objc


SWGAccommodationApi*apiInstance = [[SWGAccommodationApi alloc] init];

// Retrieve all accommodation including any deleted models
[apiInstance getAllWithTrashedAccommodationsWithCompletionHandler: 
          ^(NSArray<SWGAccommodation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccommodationApi->getAllWithTrashedAccommodations: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGAccommodation>***](SWGAccommodation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccommodation**
```objc
-(NSNumber*) updateAccommodationWithId: (NSNumber*) _id
    name: (NSString*) name
    capacity: (NSNumber*) capacity
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler;
```

Update an Accommodation

Updates the accommodation by id using the specified fields

### Example 
```objc

NSNumber* _id = @789; // ID of the Accommodation to be updated
NSString* name = @"name_example"; // Name of the Accommodation (optional)
NSNumber* capacity = @789; // Number of rooms the accommodation holds (optional)

SWGAccommodationApi*apiInstance = [[SWGAccommodationApi alloc] init];

// Update an Accommodation
[apiInstance updateAccommodationWithId:_id
              name:name
              capacity:capacity
          completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccommodationApi->updateAccommodation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of the Accommodation to be updated | 
 **name** | **NSString***| Name of the Accommodation | [optional] 
 **capacity** | **NSNumber***| Number of rooms the accommodation holds | [optional] 

### Return type

[**SWGInlineResponse200***](SWGInlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

