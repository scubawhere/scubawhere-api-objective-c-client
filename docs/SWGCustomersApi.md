# SWGCustomersApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllWithTrashedCustomers**](SWGCustomersApi.md#getallwithtrashedcustomers) | **GET** /customer/all-with-trashed | Retrieve all customer including any deleted models


# **getAllWithTrashedCustomers**
```objc
-(NSNumber*) getAllWithTrashedCustomersWithCompletionHandler: 
        (void (^)(NSArray<SWGCustomer>* output, NSError* error)) handler;
```

Retrieve all customer including any deleted models

### Example 
```objc


SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Retrieve all customer including any deleted models
[apiInstance getAllWithTrashedCustomersWithCompletionHandler: 
          ^(NSArray<SWGCustomer>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->getAllWithTrashedCustomers: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGCustomer>***](SWGCustomer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

