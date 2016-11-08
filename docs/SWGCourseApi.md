# SWGCourseApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourse**](SWGCourseApi.md#createcourse) | **POST** /course/add | Create a new course
[**deleteCourse**](SWGCourseApi.md#deletecourse) | **DELETE** /course/delete | Delete a course by ID
[**editCourse**](SWGCourseApi.md#editcourse) | **POST** /course/edit | Update a course by ID
[**getAllCourses**](SWGCourseApi.md#getallcourses) | **GET** /course/all | Retrieve all courses including any deleted models
[**getAllWithTrashedCourses**](SWGCourseApi.md#getallwithtrashedcourses) | **GET** /course/all-with-trashed | Retrieve all courses including any deleted models
[**getCourse**](SWGCourseApi.md#getcourse) | **GET** /course | Retrieve a course by ID


# **createCourse**
```objc
-(NSNumber*) createCourseWithName: (NSString*) name
    _description: (NSString*) _description
    capacity: (NSNumber*) capacity
    prices: (NSArray<NSNumber*>*) prices
    certificateId: (NSNumber*) certificateId
    tickets: (NSArray<NSNumber*>*) tickets
    trainings: (NSArray<NSNumber*>*) trainings
        completionHandler: (void (^)(SWGInlineResponse20027* output, NSError* error)) handler;
```

Create a new course

### Example 
```objc

NSString* name = @"name_example"; // 
NSString* _description = @"_description_example"; // 
NSNumber* capacity = @56; // 
NSArray<NSNumber*>* prices = @[@56]; // 
NSNumber* certificateId = @56; //  (optional)
NSArray<NSNumber*>* tickets = @[@56]; //  (optional)
NSArray<NSNumber*>* trainings = @[@56]; //  (optional)

SWGCourseApi*apiInstance = [[SWGCourseApi alloc] init];

// Create a new course
[apiInstance createCourseWithName:name
              _description:_description
              capacity:capacity
              prices:prices
              certificateId:certificateId
              tickets:tickets
              trainings:trainings
          completionHandler: ^(SWGInlineResponse20027* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCourseApi->createCourse: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 
 **_description** | **NSString***|  | 
 **capacity** | **NSNumber***|  | 
 **prices** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | 
 **certificateId** | **NSNumber***|  | [optional] 
 **tickets** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **trainings** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 

### Return type

[**SWGInlineResponse20027***](SWGInlineResponse20027.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCourse**
```objc
-(NSNumber*) deleteCourseWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete a course by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGCourseApi*apiInstance = [[SWGCourseApi alloc] init];

// Delete a course by ID
[apiInstance deleteCourseWithId:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCourseApi->deleteCourse: %@", error);
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

# **editCourse**
```objc
-(NSNumber*) editCourseWithId: (NSNumber*) _id
    name: (NSString*) name
    _description: (NSString*) _description
    capacity: (NSNumber*) capacity
    certificateId: (NSNumber*) certificateId
    tickets: (NSArray<NSNumber*>*) tickets
    trainings: (NSArray<NSNumber*>*) trainings
        completionHandler: (void (^)(SWGInlineResponse20028* output, NSError* error)) handler;
```

Update a course by ID

### Example 
```objc

NSNumber* _id = @789; // 
NSString* name = @"name_example"; // 
NSString* _description = @"_description_example"; // 
NSNumber* capacity = @56; // 
NSNumber* certificateId = @56; //  (optional)
NSArray<NSNumber*>* tickets = @[@56]; //  (optional)
NSArray<NSNumber*>* trainings = @[@56]; //  (optional)

SWGCourseApi*apiInstance = [[SWGCourseApi alloc] init];

// Update a course by ID
[apiInstance editCourseWithId:_id
              name:name
              _description:_description
              capacity:capacity
              certificateId:certificateId
              tickets:tickets
              trainings:trainings
          completionHandler: ^(SWGInlineResponse20028* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCourseApi->editCourse: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 
 **name** | **NSString***|  | 
 **_description** | **NSString***|  | 
 **capacity** | **NSNumber***|  | 
 **certificateId** | **NSNumber***|  | [optional] 
 **tickets** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **trainings** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 

### Return type

[**SWGInlineResponse20028***](SWGInlineResponse20028.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCourses**
```objc
-(NSNumber*) getAllCoursesWithCompletionHandler: 
        (void (^)(NSArray<SWGCourse>* output, NSError* error)) handler;
```

Retrieve all courses including any deleted models

### Example 
```objc


SWGCourseApi*apiInstance = [[SWGCourseApi alloc] init];

// Retrieve all courses including any deleted models
[apiInstance getAllCoursesWithCompletionHandler: 
          ^(NSArray<SWGCourse>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCourseApi->getAllCourses: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGCourse>***](SWGCourse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedCourses**
```objc
-(NSNumber*) getAllWithTrashedCoursesWithCompletionHandler: 
        (void (^)(NSArray<SWGCourse>* output, NSError* error)) handler;
```

Retrieve all courses including any deleted models

### Example 
```objc


SWGCourseApi*apiInstance = [[SWGCourseApi alloc] init];

// Retrieve all courses including any deleted models
[apiInstance getAllWithTrashedCoursesWithCompletionHandler: 
          ^(NSArray<SWGCourse>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCourseApi->getAllWithTrashedCourses: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGCourse>***](SWGCourse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCourse**
```objc
-(NSNumber*) getCourseWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse20027* output, NSError* error)) handler;
```

Retrieve a course by ID

### Example 
```objc

NSNumber* _id = @789; //  (optional)

SWGCourseApi*apiInstance = [[SWGCourseApi alloc] init];

// Retrieve a course by ID
[apiInstance getCourseWithId:_id
          completionHandler: ^(SWGInlineResponse20027* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCourseApi->getCourse: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20027***](SWGInlineResponse20027.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

