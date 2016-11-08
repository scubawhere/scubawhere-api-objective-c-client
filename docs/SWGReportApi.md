# SWGReportApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRevenueStreamReport**](SWGReportApi.md#getrevenuestreamreport) | **GET** /report/revenue-streams | Get a report containing the distribution of revenue made from all the tickets, packages, courses, addons, accommodations
[**getSourcesReport**](SWGReportApi.md#getsourcesreport) | **GET** /report/sources | Get a report about the distribution of revenue between the diffrent source of bookings
[**getTrainingUtilisationReport**](SWGReportApi.md#gettrainingutilisationreport) | **GET** /report/training-utilisation | Get a report containing the utilisation of all classes between the specified dates
[**getUtilisationReport**](SWGReportApi.md#getutilisationreport) | **GET** /report/utilisation | Get a report containing the utilisation of all trips between the specified dates


# **getRevenueStreamReport**
```objc
-(NSNumber*) getRevenueStreamReportWithAfter: (NSDate*) after
    before: (NSDate*) before
        completionHandler: (void (^)(SWGInlineResponse20040* output, NSError* error)) handler;
```

Get a report containing the distribution of revenue made from all the tickets, packages, courses, addons, accommodations

### Example 
```objc

NSDate* after = @"2013-10-20"; // 
NSDate* before = @"2013-10-20"; // 

SWGReportApi*apiInstance = [[SWGReportApi alloc] init];

// Get a report containing the distribution of revenue made from all the tickets, packages, courses, addons, accommodations
[apiInstance getRevenueStreamReportWithAfter:after
              before:before
          completionHandler: ^(SWGInlineResponse20040* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportApi->getRevenueStreamReport: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **NSDate***|  | 
 **before** | **NSDate***|  | 

### Return type

[**SWGInlineResponse20040***](SWGInlineResponse20040.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSourcesReport**
```objc
-(NSNumber*) getSourcesReportWithAfter: (NSDate*) after
    before: (NSDate*) before
        completionHandler: (void (^)(SWGInlineResponse20041* output, NSError* error)) handler;
```

Get a report about the distribution of revenue between the diffrent source of bookings

### Example 
```objc

NSDate* after = @"2013-10-20"; // 
NSDate* before = @"2013-10-20"; // 

SWGReportApi*apiInstance = [[SWGReportApi alloc] init];

// Get a report about the distribution of revenue between the diffrent source of bookings
[apiInstance getSourcesReportWithAfter:after
              before:before
          completionHandler: ^(SWGInlineResponse20041* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportApi->getSourcesReport: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **NSDate***|  | 
 **before** | **NSDate***|  | 

### Return type

[**SWGInlineResponse20041***](SWGInlineResponse20041.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrainingUtilisationReport**
```objc
-(NSNumber*) getTrainingUtilisationReportWithAfter: (NSDate*) after
    before: (NSDate*) before
        completionHandler: (void (^)(SWGInlineResponse20042* output, NSError* error)) handler;
```

Get a report containing the utilisation of all classes between the specified dates

### Example 
```objc

NSDate* after = @"2013-10-20"; // 
NSDate* before = @"2013-10-20"; // 

SWGReportApi*apiInstance = [[SWGReportApi alloc] init];

// Get a report containing the utilisation of all classes between the specified dates
[apiInstance getTrainingUtilisationReportWithAfter:after
              before:before
          completionHandler: ^(SWGInlineResponse20042* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportApi->getTrainingUtilisationReport: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **NSDate***|  | 
 **before** | **NSDate***|  | 

### Return type

[**SWGInlineResponse20042***](SWGInlineResponse20042.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUtilisationReport**
```objc
-(NSNumber*) getUtilisationReportWithAfter: (NSDate*) after
    before: (NSDate*) before
        completionHandler: (void (^)(SWGInlineResponse20042* output, NSError* error)) handler;
```

Get a report containing the utilisation of all trips between the specified dates

### Example 
```objc

NSDate* after = @"2013-10-20"; // 
NSDate* before = @"2013-10-20"; // 

SWGReportApi*apiInstance = [[SWGReportApi alloc] init];

// Get a report containing the utilisation of all trips between the specified dates
[apiInstance getUtilisationReportWithAfter:after
              before:before
          completionHandler: ^(SWGInlineResponse20042* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportApi->getUtilisationReport: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **NSDate***|  | 
 **before** | **NSDate***|  | 

### Return type

[**SWGInlineResponse20042***](SWGInlineResponse20042.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

