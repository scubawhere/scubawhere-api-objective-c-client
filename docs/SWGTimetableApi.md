# SWGTimetableApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTimetable**](SWGTimetableApi.md#addtimetable) | **GET** /timetable/add | Create a new timetable for sessions
[**getAllTimetables**](SWGTimetableApi.md#getalltimetables) | **GET** /timetable/all | Retrieve all of the timetables for sessions
[**getTimetable**](SWGTimetableApi.md#gettimetable) | **GET** /timetable | Retrieve a timetable by ID


# **addTimetable**
```objc
-(NSNumber*) addTimetableWithSchedule: (NSString*) schedule
    sessionId: (NSNumber*) sessionId
    until: (NSDate*) until
        completionHandler: (void (^)(SWGInlineResponse2015* output, NSError* error)) handler;
```

Create a new timetable for sessions

### Example 
```objc

NSString* schedule = @"schedule_example"; // 
NSNumber* sessionId = @789; // 
NSDate* until = @"2013-10-20"; //  (optional)

SWGTimetableApi*apiInstance = [[SWGTimetableApi alloc] init];

// Create a new timetable for sessions
[apiInstance addTimetableWithSchedule:schedule
              sessionId:sessionId
              until:until
          completionHandler: ^(SWGInlineResponse2015* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTimetableApi->addTimetable: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **NSString***|  | 
 **sessionId** | **NSNumber***|  | 
 **until** | **NSDate***|  | [optional] 

### Return type

[**SWGInlineResponse2015***](SWGInlineResponse2015.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTimetables**
```objc
-(NSNumber*) getAllTimetablesWithCompletionHandler: 
        (void (^)(NSArray<SWGTimetable>* output, NSError* error)) handler;
```

Retrieve all of the timetables for sessions

### Example 
```objc


SWGTimetableApi*apiInstance = [[SWGTimetableApi alloc] init];

// Retrieve all of the timetables for sessions
[apiInstance getAllTimetablesWithCompletionHandler: 
          ^(NSArray<SWGTimetable>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTimetableApi->getAllTimetables: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTimetable>***](SWGTimetable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimetable**
```objc
-(NSNumber*) getTimetableWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGTimetable* output, NSError* error)) handler;
```

Retrieve a timetable by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGTimetableApi*apiInstance = [[SWGTimetableApi alloc] init];

// Retrieve a timetable by ID
[apiInstance getTimetableWithId:_id
          completionHandler: ^(SWGTimetable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTimetableApi->getTimetable: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGTimetable***](SWGTimetable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

