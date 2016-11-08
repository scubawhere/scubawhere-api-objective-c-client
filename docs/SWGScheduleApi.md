# SWGScheduleApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSchedule**](SWGScheduleApi.md#addschedule) | **GET** /schedule/add | Create a new schedule for classes
[**getAllSchedules**](SWGScheduleApi.md#getallschedules) | **GET** /schedule/all | Retrieve all of the schedules for classes
[**getSchedule**](SWGScheduleApi.md#getschedule) | **GET** /schedule | Retrieve a schedule by ID


# **addSchedule**
```objc
-(NSNumber*) addScheduleWithSchedule: (NSString*) schedule
    trainingSessionId: (NSNumber*) trainingSessionId
    until: (NSDate*) until
        completionHandler: (void (^)(SWGInlineResponse2013* output, NSError* error)) handler;
```

Create a new schedule for classes

### Example 
```objc

NSString* schedule = @"schedule_example"; // 
NSNumber* trainingSessionId = @789; // 
NSDate* until = @"2013-10-20"; //  (optional)

SWGScheduleApi*apiInstance = [[SWGScheduleApi alloc] init];

// Create a new schedule for classes
[apiInstance addScheduleWithSchedule:schedule
              trainingSessionId:trainingSessionId
              until:until
          completionHandler: ^(SWGInlineResponse2013* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGScheduleApi->addSchedule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **NSString***|  | 
 **trainingSessionId** | **NSNumber***|  | 
 **until** | **NSDate***|  | [optional] 

### Return type

[**SWGInlineResponse2013***](SWGInlineResponse2013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSchedules**
```objc
-(NSNumber*) getAllSchedulesWithCompletionHandler: 
        (void (^)(NSArray<SWGSchedule>* output, NSError* error)) handler;
```

Retrieve all of the schedules for classes

### Example 
```objc


SWGScheduleApi*apiInstance = [[SWGScheduleApi alloc] init];

// Retrieve all of the schedules for classes
[apiInstance getAllSchedulesWithCompletionHandler: 
          ^(NSArray<SWGSchedule>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGScheduleApi->getAllSchedules: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGSchedule>***](SWGSchedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSchedule**
```objc
-(NSNumber*) getScheduleWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGSchedule* output, NSError* error)) handler;
```

Retrieve a schedule by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGScheduleApi*apiInstance = [[SWGScheduleApi alloc] init];

// Retrieve a schedule by ID
[apiInstance getScheduleWithId:_id
          completionHandler: ^(SWGSchedule* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGScheduleApi->getSchedule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGSchedule***](SWGSchedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

