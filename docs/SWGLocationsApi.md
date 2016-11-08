# SWGLocationsApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLocation**](SWGLocationsApi.md#getlocation) | **GET** /location | Retrieve a location by its ID


# **getLocation**
```objc
-(NSNumber*) getLocationWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse20031* output, NSError* error)) handler;
```

Retrieve a location by its ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGLocationsApi*apiInstance = [[SWGLocationsApi alloc] init];

// Retrieve a location by its ID
[apiInstance getLocationWithId:_id
          completionHandler: ^(SWGInlineResponse20031* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLocationsApi->getLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse20031***](SWGInlineResponse20031.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

