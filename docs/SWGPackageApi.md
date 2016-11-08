# SWGPackageApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPackage**](SWGPackageApi.md#createpackage) | **POST** /package/add | Create a new package
[**deletePackage**](SWGPackageApi.md#deletepackage) | **DELETE** /package/delete | Delete a package by ID
[**editPackage**](SWGPackageApi.md#editpackage) | **POST** /package/edit | Update a package by ID
[**getAllPackages**](SWGPackageApi.md#getallpackages) | **GET** /package/all | Retrieve all packages including any deleted models
[**getAllWithTrashedPackages**](SWGPackageApi.md#getallwithtrashedpackages) | **GET** /package/all-with-trashed | Retrieve all packages including any deleted models
[**getPackage**](SWGPackageApi.md#getpackage) | **GET** /package | Retrieve a package by ID


# **createPackage**
```objc
-(NSNumber*) createPackageWithName: (NSString*) name
    _description: (NSString*) _description
    availableFrom: (NSDate*) availableFrom
    availableUntil: (NSDate*) availableUntil
    tickets: (NSArray<NSNumber*>*) tickets
    courses: (NSArray<NSNumber*>*) courses
    accommodations: (NSArray<NSNumber*>*) accommodations
    addons: (NSArray<NSNumber*>*) addons
    prices: (NSArray<NSNumber*>*) prices
        completionHandler: (void (^)(SWGInlineResponse20032* output, NSError* error)) handler;
```

Create a new package

### Example 
```objc

NSString* name = @"name_example"; // 
NSString* _description = @"_description_example"; //  (optional)
NSDate* availableFrom = @"2013-10-20"; //  (optional)
NSDate* availableUntil = @"2013-10-20"; //  (optional)
NSArray<NSNumber*>* tickets = @[@56]; //  (optional)
NSArray<NSNumber*>* courses = @[@56]; //  (optional)
NSArray<NSNumber*>* accommodations = @[@56]; //  (optional)
NSArray<NSNumber*>* addons = @[@56]; //  (optional)
NSArray<NSNumber*>* prices = @[@56]; //  (optional)

SWGPackageApi*apiInstance = [[SWGPackageApi alloc] init];

// Create a new package
[apiInstance createPackageWithName:name
              _description:_description
              availableFrom:availableFrom
              availableUntil:availableUntil
              tickets:tickets
              courses:courses
              accommodations:accommodations
              addons:addons
              prices:prices
          completionHandler: ^(SWGInlineResponse20032* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPackageApi->createPackage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 
 **_description** | **NSString***|  | [optional] 
 **availableFrom** | **NSDate***|  | [optional] 
 **availableUntil** | **NSDate***|  | [optional] 
 **tickets** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **courses** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **accommodations** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **addons** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **prices** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 

### Return type

[**SWGInlineResponse20032***](SWGInlineResponse20032.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePackage**
```objc
-(NSNumber*) deletePackageWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete a package by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGPackageApi*apiInstance = [[SWGPackageApi alloc] init];

// Delete a package by ID
[apiInstance deletePackageWithId:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPackageApi->deletePackage: %@", error);
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

# **editPackage**
```objc
-(NSNumber*) editPackageWithId: (NSNumber*) _id
    name: (NSString*) name
    _description: (NSString*) _description
    availableFrom: (NSDate*) availableFrom
    availableUntil: (NSDate*) availableUntil
    tickets: (NSArray<NSNumber*>*) tickets
    courses: (NSArray<NSNumber*>*) courses
    accommodations: (NSArray<NSNumber*>*) accommodations
    addons: (NSArray<NSNumber*>*) addons
    prices: (NSArray<NSNumber*>*) prices
        completionHandler: (void (^)(SWGInlineResponse20033* output, NSError* error)) handler;
```

Update a package by ID

### Example 
```objc

NSNumber* _id = @789; // 
NSString* name = @"name_example"; // 
NSString* _description = @"_description_example"; //  (optional)
NSDate* availableFrom = @"2013-10-20"; //  (optional)
NSDate* availableUntil = @"2013-10-20"; //  (optional)
NSArray<NSNumber*>* tickets = @[@56]; //  (optional)
NSArray<NSNumber*>* courses = @[@56]; //  (optional)
NSArray<NSNumber*>* accommodations = @[@56]; //  (optional)
NSArray<NSNumber*>* addons = @[@56]; //  (optional)
NSArray<NSNumber*>* prices = @[@56]; //  (optional)

SWGPackageApi*apiInstance = [[SWGPackageApi alloc] init];

// Update a package by ID
[apiInstance editPackageWithId:_id
              name:name
              _description:_description
              availableFrom:availableFrom
              availableUntil:availableUntil
              tickets:tickets
              courses:courses
              accommodations:accommodations
              addons:addons
              prices:prices
          completionHandler: ^(SWGInlineResponse20033* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPackageApi->editPackage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 
 **name** | **NSString***|  | 
 **_description** | **NSString***|  | [optional] 
 **availableFrom** | **NSDate***|  | [optional] 
 **availableUntil** | **NSDate***|  | [optional] 
 **tickets** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **courses** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **accommodations** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **addons** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **prices** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 

### Return type

[**SWGInlineResponse20033***](SWGInlineResponse20033.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllPackages**
```objc
-(NSNumber*) getAllPackagesWithCompletionHandler: 
        (void (^)(NSArray<SWGPackage>* output, NSError* error)) handler;
```

Retrieve all packages including any deleted models

### Example 
```objc


SWGPackageApi*apiInstance = [[SWGPackageApi alloc] init];

// Retrieve all packages including any deleted models
[apiInstance getAllPackagesWithCompletionHandler: 
          ^(NSArray<SWGPackage>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPackageApi->getAllPackages: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGPackage>***](SWGPackage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedPackages**
```objc
-(NSNumber*) getAllWithTrashedPackagesWithCompletionHandler: 
        (void (^)(NSArray<SWGPackage>* output, NSError* error)) handler;
```

Retrieve all packages including any deleted models

### Example 
```objc


SWGPackageApi*apiInstance = [[SWGPackageApi alloc] init];

// Retrieve all packages including any deleted models
[apiInstance getAllWithTrashedPackagesWithCompletionHandler: 
          ^(NSArray<SWGPackage>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPackageApi->getAllWithTrashedPackages: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGPackage>***](SWGPackage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackage**
```objc
-(NSNumber*) getPackageWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse20032* output, NSError* error)) handler;
```

Retrieve a package by ID

### Example 
```objc

NSNumber* _id = @789; //  (optional)

SWGPackageApi*apiInstance = [[SWGPackageApi alloc] init];

// Retrieve a package by ID
[apiInstance getPackageWithId:_id
          completionHandler: ^(SWGInlineResponse20032* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPackageApi->getPackage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20032***](SWGInlineResponse20032.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

