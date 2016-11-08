# SWGRefundApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addRefund**](SWGRefundApi.md#addrefund) | **POST** /refund/add | Create a new refund
[**filterRefunds**](SWGRefundApi.md#filterrefunds) | **GET** /refund/filter | Retrieve all refunds that match a filter
[**getAllRefunds**](SWGRefundApi.md#getallrefunds) | **GET** /refund/all | Retrieve all refunds made
[**getRefund**](SWGRefundApi.md#getrefund) | **GET** /refund | Retrieve a refund by ID


# **addRefund**
```objc
-(NSNumber*) addRefundWithBookingId: (NSNumber*) bookingId
    paymentgatewayId: (NSNumber*) paymentgatewayId
    amount: (NSNumber*) amount
        completionHandler: (void (^)(SWGInlineResponse2012* output, NSError* error)) handler;
```

Create a new refund

### Example 
```objc

NSNumber* bookingId = @789; // 
NSNumber* paymentgatewayId = @789; // 
NSNumber* amount = @3.4; // 

SWGRefundApi*apiInstance = [[SWGRefundApi alloc] init];

// Create a new refund
[apiInstance addRefundWithBookingId:bookingId
              paymentgatewayId:paymentgatewayId
              amount:amount
          completionHandler: ^(SWGInlineResponse2012* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRefundApi->addRefund: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 
 **paymentgatewayId** | **NSNumber***|  | 
 **amount** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse2012***](SWGInlineResponse2012.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterRefunds**
```objc
-(NSNumber*) filterRefundsWithAfter: (NSDate*) after
    before: (NSDate*) before
        completionHandler: (void (^)(SWGInlineResponse20039* output, NSError* error)) handler;
```

Retrieve all refunds that match a filter

### Example 
```objc

NSDate* after = @"2013-10-20"; // Date of the earliest payment (optional)
NSDate* before = @"2013-10-20"; // Date of the latest payment to be retrieved (optional)

SWGRefundApi*apiInstance = [[SWGRefundApi alloc] init];

// Retrieve all refunds that match a filter
[apiInstance filterRefundsWithAfter:after
              before:before
          completionHandler: ^(SWGInlineResponse20039* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRefundApi->filterRefunds: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **NSDate***| Date of the earliest payment | [optional] 
 **before** | **NSDate***| Date of the latest payment to be retrieved | [optional] 

### Return type

[**SWGInlineResponse20039***](SWGInlineResponse20039.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllRefunds**
```objc
-(NSNumber*) getAllRefundsWithCompletionHandler: 
        (void (^)(SWGInlineResponse20038* output, NSError* error)) handler;
```

Retrieve all refunds made

### Example 
```objc


SWGRefundApi*apiInstance = [[SWGRefundApi alloc] init];

// Retrieve all refunds made
[apiInstance getAllRefundsWithCompletionHandler: 
          ^(SWGInlineResponse20038* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRefundApi->getAllRefunds: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGInlineResponse20038***](SWGInlineResponse20038.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRefund**
```objc
-(NSNumber*) getRefundWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse20037* output, NSError* error)) handler;
```

Retrieve a refund by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGRefundApi*apiInstance = [[SWGRefundApi alloc] init];

// Retrieve a refund by ID
[apiInstance getRefundWithId:_id
          completionHandler: ^(SWGInlineResponse20037* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRefundApi->getRefund: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse20037***](SWGInlineResponse20037.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

