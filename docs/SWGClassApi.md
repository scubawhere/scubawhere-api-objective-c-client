# SWGClassApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**classGet**](SWGClassApi.md#classget) | **GET** /class | Retrieve a class by ID
[**createClass**](SWGClassApi.md#createclass) | **POST** /class/add | Create a new class
[**deleteClass**](SWGClassApi.md#deleteclass) | **DELETE** /class/delete | Delete a class by ID
[**editClass**](SWGClassApi.md#editclass) | **POST** /class/edit | Update a class by ID
[**getAllClass**](SWGClassApi.md#getallclass) | **GET** /class/all | Retrieve all classes including any deleted models
[**getAllWithTrashedClass**](SWGClassApi.md#getallwithtrashedclass) | **GET** /class/all-with-trashed | Retrieve all classes including any deleted models


# **classGet**
```objc
-(NSNumber*) classGetWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGTraining* output, NSError* error)) handler;
```

Retrieve a class by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGClassApi*apiInstance = [[SWGClassApi alloc] init];

// Retrieve a class by ID
[apiInstance classGetWithId:_id
          completionHandler: ^(SWGTraining* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClassApi->classGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGTraining***](SWGTraining.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createClass**
```objc
-(NSNumber*) createClassWithName: (NSString*) name
    duration: (NSNumber*) duration
    _description: (NSString*) _description
        completionHandler: (void (^)(SWGInlineResponse20021* output, NSError* error)) handler;
```

Create a new class

### Example 
```objc

NSString* name = @"name_example"; // 
NSNumber* duration = @3.4; // 
NSString* _description = @"_description_example"; //  (optional)

SWGClassApi*apiInstance = [[SWGClassApi alloc] init];

// Create a new class
[apiInstance createClassWithName:name
              duration:duration
              _description:_description
          completionHandler: ^(SWGInlineResponse20021* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClassApi->createClass: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 
 **duration** | **NSNumber***|  | 
 **_description** | **NSString***|  | [optional] 

### Return type

[**SWGInlineResponse20021***](SWGInlineResponse20021.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClass**
```objc
-(NSNumber*) deleteClassWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete a class by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGClassApi*apiInstance = [[SWGClassApi alloc] init];

// Delete a class by ID
[apiInstance deleteClassWithId:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClassApi->deleteClass: %@", error);
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

# **editClass**
```objc
-(NSNumber*) editClassWithId: (NSNumber*) _id
    name: (NSString*) name
    duration: (NSNumber*) duration
    _description: (NSString*) _description
        completionHandler: (void (^)(SWGInlineResponse20022* output, NSError* error)) handler;
```

Update a class by ID

### Example 
```objc

NSNumber* _id = @56; // 
NSString* name = @"name_example"; // 
NSNumber* duration = @3.4; // 
NSString* _description = @"_description_example"; //  (optional)

SWGClassApi*apiInstance = [[SWGClassApi alloc] init];

// Update a class by ID
[apiInstance editClassWithId:_id
              name:name
              duration:duration
              _description:_description
          completionHandler: ^(SWGInlineResponse20022* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClassApi->editClass: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 
 **name** | **NSString***|  | 
 **duration** | **NSNumber***|  | 
 **_description** | **NSString***|  | [optional] 

### Return type

[**SWGInlineResponse20022***](SWGInlineResponse20022.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllClass**
```objc
-(NSNumber*) getAllClassWithCompletionHandler: 
        (void (^)(NSArray<SWGTraining>* output, NSError* error)) handler;
```

Retrieve all classes including any deleted models

### Example 
```objc


SWGClassApi*apiInstance = [[SWGClassApi alloc] init];

// Retrieve all classes including any deleted models
[apiInstance getAllClassWithCompletionHandler: 
          ^(NSArray<SWGTraining>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClassApi->getAllClass: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTraining>***](SWGTraining.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedClass**
```objc
-(NSNumber*) getAllWithTrashedClassWithCompletionHandler: 
        (void (^)(NSArray<SWGTraining>* output, NSError* error)) handler;
```

Retrieve all classes including any deleted models

### Example 
```objc


SWGClassApi*apiInstance = [[SWGClassApi alloc] init];

// Retrieve all classes including any deleted models
[apiInstance getAllWithTrashedClassWithCompletionHandler: 
          ^(NSArray<SWGTraining>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClassApi->getAllWithTrashedClass: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTraining>***](SWGTraining.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

