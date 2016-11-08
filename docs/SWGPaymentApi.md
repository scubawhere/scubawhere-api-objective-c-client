# SWGPaymentApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPayment**](SWGPaymentApi.md#addpayment) | **POST** /payment/add | Create a new payment
[**filterPayments**](SWGPaymentApi.md#filterpayments) | **GET** /payment/filter | Retrieve all payments that match a filter
[**getAllPayments**](SWGPaymentApi.md#getallpayments) | **GET** /payment/all | Retrieve all payments made
[**getPayment**](SWGPaymentApi.md#getpayment) | **GET** /payment | Retrieve a payment by ID
[**getPaymentGateways**](SWGPaymentApi.md#getpaymentgateways) | **GET** /payment/paymentgateways | Retrieve all the payment gateways


# **addPayment**
```objc
-(NSNumber*) addPaymentWithBookingId: (NSNumber*) bookingId
    paymentgatewayId: (NSNumber*) paymentgatewayId
    amount: (NSNumber*) amount
        completionHandler: (void (^)(SWGInlineResponse2011* output, NSError* error)) handler;
```

Create a new payment

### Example 
```objc

NSNumber* bookingId = @789; // 
NSNumber* paymentgatewayId = @789; // 
NSNumber* amount = @3.4; // 

SWGPaymentApi*apiInstance = [[SWGPaymentApi alloc] init];

// Create a new payment
[apiInstance addPaymentWithBookingId:bookingId
              paymentgatewayId:paymentgatewayId
              amount:amount
          completionHandler: ^(SWGInlineResponse2011* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPaymentApi->addPayment: %@", error);
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

[**SWGInlineResponse2011***](SWGInlineResponse2011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterPayments**
```objc
-(NSNumber*) filterPaymentsWithAfter: (NSDate*) after
    before: (NSDate*) before
        completionHandler: (void (^)(SWGInlineResponse20035* output, NSError* error)) handler;
```

Retrieve all payments that match a filter

### Example 
```objc

NSDate* after = @"2013-10-20"; // Date of the earliest payment (optional)
NSDate* before = @"2013-10-20"; // Date of the latest payment to be retrieved (optional)

SWGPaymentApi*apiInstance = [[SWGPaymentApi alloc] init];

// Retrieve all payments that match a filter
[apiInstance filterPaymentsWithAfter:after
              before:before
          completionHandler: ^(SWGInlineResponse20035* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPaymentApi->filterPayments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **NSDate***| Date of the earliest payment | [optional] 
 **before** | **NSDate***| Date of the latest payment to be retrieved | [optional] 

### Return type

[**SWGInlineResponse20035***](SWGInlineResponse20035.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllPayments**
```objc
-(NSNumber*) getAllPaymentsWithCompletionHandler: 
        (void (^)(NSArray<SWGPayment>* output, NSError* error)) handler;
```

Retrieve all payments made

### Example 
```objc


SWGPaymentApi*apiInstance = [[SWGPaymentApi alloc] init];

// Retrieve all payments made
[apiInstance getAllPaymentsWithCompletionHandler: 
          ^(NSArray<SWGPayment>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPaymentApi->getAllPayments: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGPayment>***](SWGPayment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPayment**
```objc
-(NSNumber*) getPaymentWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse20034* output, NSError* error)) handler;
```

Retrieve a payment by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGPaymentApi*apiInstance = [[SWGPaymentApi alloc] init];

// Retrieve a payment by ID
[apiInstance getPaymentWithId:_id
          completionHandler: ^(SWGInlineResponse20034* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPaymentApi->getPayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse20034***](SWGInlineResponse20034.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentGateways**
```objc
-(NSNumber*) getPaymentGatewaysWithCompletionHandler: 
        (void (^)(SWGInlineResponse20036* output, NSError* error)) handler;
```

Retrieve all the payment gateways

### Example 
```objc


SWGPaymentApi*apiInstance = [[SWGPaymentApi alloc] init];

// Retrieve all the payment gateways
[apiInstance getPaymentGatewaysWithCompletionHandler: 
          ^(SWGInlineResponse20036* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPaymentApi->getPaymentGateways: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGInlineResponse20036***](SWGInlineResponse20036.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

