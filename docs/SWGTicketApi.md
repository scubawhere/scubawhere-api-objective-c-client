# SWGTicketApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTicket**](SWGTicketApi.md#addticket) | **POST** /ticket/add | Create a new ticket
[**deleteTicket**](SWGTicketApi.md#deleteticket) | **DELETE** /ticket/delete | Delete a ticket
[**editTicket**](SWGTicketApi.md#editticket) | **PUT** /ticket/edit | Update an existing ticket
[**getAllAvailableTickets**](SWGTicketApi.md#getallavailabletickets) | **GET** /ticket/only-available | Retrieve all tickets that are available to booked today
[**getAllTickets**](SWGTicketApi.md#getalltickets) | **GET** /ticket/all | Retrieve all tickets
[**getAllWithTrashedTickets**](SWGTicketApi.md#getallwithtrashedtickets) | **GET** /ticket/all-with-trashed | Retrieve all tickets
[**getTicket**](SWGTicketApi.md#getticket) | **GET** /ticket | Retrieve a ticket by ID


# **addTicket**
```objc
-(NSNumber*) addTicketWithName: (NSString*) name
    trips: (NSArray<NSNumber*>*) trips
    prices: (SWGBasePrice*) prices
    _description: (NSString*) _description
    availableFrom: (NSDate*) availableFrom
    availableUntil: (NSDate*) availableUntil
    onlyPackaged: (NSNumber*) onlyPackaged
    boats: (NSArray<NSNumber*>*) boats
    boatrooms: (NSArray<NSNumber*>*) boatrooms
        completionHandler: (void (^)(SWGInlineResponse2014* output, NSError* error)) handler;
```

Create a new ticket

### Example 
```objc

NSString* name = @"name_example"; // 
NSArray<NSNumber*>* trips = @[@56]; // 
SWGBasePrice* prices = [[SWGBasePrice alloc] init]; // 
NSString* _description = @"_description_example"; //  (optional)
NSDate* availableFrom = @"2013-10-20"; //  (optional)
NSDate* availableUntil = @"2013-10-20"; //  (optional)
NSNumber* onlyPackaged = @true; //  (optional)
NSArray<NSNumber*>* boats = @[@56]; //  (optional)
NSArray<NSNumber*>* boatrooms = @[@56]; //  (optional)

SWGTicketApi*apiInstance = [[SWGTicketApi alloc] init];

// Create a new ticket
[apiInstance addTicketWithName:name
              trips:trips
              prices:prices
              _description:_description
              availableFrom:availableFrom
              availableUntil:availableUntil
              onlyPackaged:onlyPackaged
              boats:boats
              boatrooms:boatrooms
          completionHandler: ^(SWGInlineResponse2014* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTicketApi->addTicket: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 
 **trips** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | 
 **prices** | [**SWGBasePrice***](SWGBasePrice*.md)|  | 
 **_description** | **NSString***|  | [optional] 
 **availableFrom** | **NSDate***|  | [optional] 
 **availableUntil** | **NSDate***|  | [optional] 
 **onlyPackaged** | **NSNumber***|  | [optional] 
 **boats** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **boatrooms** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 

### Return type

[**SWGInlineResponse2014***](SWGInlineResponse2014.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTicket**
```objc
-(NSNumber*) deleteTicketWithName: (NSString*) name
        completionHandler: (void (^)(SWGInlineResponse2014* output, NSError* error)) handler;
```

Delete a ticket

### Example 
```objc

NSString* name = @"name_example"; // 

SWGTicketApi*apiInstance = [[SWGTicketApi alloc] init];

// Delete a ticket
[apiInstance deleteTicketWithName:name
          completionHandler: ^(SWGInlineResponse2014* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTicketApi->deleteTicket: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 

### Return type

[**SWGInlineResponse2014***](SWGInlineResponse2014.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTicket**
```objc
-(NSNumber*) editTicketWithId: (NSNumber*) _id
    name: (NSString*) name
    trips: (NSArray<NSNumber*>*) trips
    prices: (SWGBasePrice*) prices
    _description: (NSString*) _description
    availableFrom: (NSDate*) availableFrom
    availableUntil: (NSDate*) availableUntil
    onlyPackaged: (NSNumber*) onlyPackaged
    boats: (NSArray<NSNumber*>*) boats
    boatrooms: (NSArray<NSNumber*>*) boatrooms
        completionHandler: (void (^)(SWGInlineResponse2014* output, NSError* error)) handler;
```

Update an existing ticket

### Example 
```objc

NSNumber* _id = @789; // 
NSString* name = @"name_example"; // 
NSArray<NSNumber*>* trips = @[@56]; // 
SWGBasePrice* prices = [[SWGBasePrice alloc] init]; // 
NSString* _description = @"_description_example"; //  (optional)
NSDate* availableFrom = @"2013-10-20"; //  (optional)
NSDate* availableUntil = @"2013-10-20"; //  (optional)
NSNumber* onlyPackaged = @true; //  (optional)
NSArray<NSNumber*>* boats = @[@56]; //  (optional)
NSArray<NSNumber*>* boatrooms = @[@56]; //  (optional)

SWGTicketApi*apiInstance = [[SWGTicketApi alloc] init];

// Update an existing ticket
[apiInstance editTicketWithId:_id
              name:name
              trips:trips
              prices:prices
              _description:_description
              availableFrom:availableFrom
              availableUntil:availableUntil
              onlyPackaged:onlyPackaged
              boats:boats
              boatrooms:boatrooms
          completionHandler: ^(SWGInlineResponse2014* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTicketApi->editTicket: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 
 **name** | **NSString***|  | 
 **trips** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | 
 **prices** | [**SWGBasePrice***](SWGBasePrice*.md)|  | 
 **_description** | **NSString***|  | [optional] 
 **availableFrom** | **NSDate***|  | [optional] 
 **availableUntil** | **NSDate***|  | [optional] 
 **onlyPackaged** | **NSNumber***|  | [optional] 
 **boats** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 
 **boatrooms** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 

### Return type

[**SWGInlineResponse2014***](SWGInlineResponse2014.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAvailableTickets**
```objc
-(NSNumber*) getAllAvailableTicketsWithCompletionHandler: 
        (void (^)(NSArray<SWGTicket>* output, NSError* error)) handler;
```

Retrieve all tickets that are available to booked today

### Example 
```objc


SWGTicketApi*apiInstance = [[SWGTicketApi alloc] init];

// Retrieve all tickets that are available to booked today
[apiInstance getAllAvailableTicketsWithCompletionHandler: 
          ^(NSArray<SWGTicket>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTicketApi->getAllAvailableTickets: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTicket>***](SWGTicket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTickets**
```objc
-(NSNumber*) getAllTicketsWithCompletionHandler: 
        (void (^)(NSArray<SWGTicket>* output, NSError* error)) handler;
```

Retrieve all tickets

### Example 
```objc


SWGTicketApi*apiInstance = [[SWGTicketApi alloc] init];

// Retrieve all tickets
[apiInstance getAllTicketsWithCompletionHandler: 
          ^(NSArray<SWGTicket>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTicketApi->getAllTickets: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTicket>***](SWGTicket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedTickets**
```objc
-(NSNumber*) getAllWithTrashedTicketsWithCompletionHandler: 
        (void (^)(NSArray<SWGTicket>* output, NSError* error)) handler;
```

Retrieve all tickets

### Example 
```objc


SWGTicketApi*apiInstance = [[SWGTicketApi alloc] init];

// Retrieve all tickets
[apiInstance getAllWithTrashedTicketsWithCompletionHandler: 
          ^(NSArray<SWGTicket>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTicketApi->getAllWithTrashedTickets: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGTicket>***](SWGTicket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicket**
```objc
-(NSNumber*) getTicketWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGTicket* output, NSError* error)) handler;
```

Retrieve a ticket by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGTicketApi*apiInstance = [[SWGTicketApi alloc] init];

// Retrieve a ticket by ID
[apiInstance getTicketWithId:_id
          completionHandler: ^(SWGTicket* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTicketApi->getTicket: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGTicket***](SWGTicket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

