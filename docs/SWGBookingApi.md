# SWGBookingApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBookingDetail**](SWGBookingApi.md#addbookingdetail) | **POST** /booking/add-detail | Add a package / course / ticket with its session to the booking
[**attachAccommodation**](SWGBookingApi.md#attachaccommodation) | **POST** /booking/add-accommodation | Attach an accommodation booking to a booking
[**attachAddon**](SWGBookingApi.md#attachaddon) | **POST** /booking/add-addon | Attach an addon to a trip of a booking
[**attachPickup**](SWGBookingApi.md#attachpickup) | **POST** /booking/add-pickup | Attach a pickup location for a booking
[**cancelBooking**](SWGBookingApi.md#cancelbooking) | **POST** /booking/cancel | Cancel a booking
[**confirmBooking**](SWGBookingApi.md#confirmbooking) | **POST** /booking/confirm | Confirm a booking and all of its sessions and notify the lead customer
[**deleteBooking**](SWGBookingApi.md#deletebooking) | **DELETE** /booking/delete | Delete a booking by ID
[**dettachAccommodation**](SWGBookingApi.md#dettachaccommodation) | **POST** /booking/remove-accommodation | Dettach an accommodation booking to a booking
[**dettachAddon**](SWGBookingApi.md#dettachaddon) | **POST** /booking/remove-addon | Dettach an addon to a trip of a booking
[**dettachPickup**](SWGBookingApi.md#dettachpickup) | **POST** /booking/remove-pickup | Dettach a pickup location for a booking
[**editBookingInfo**](SWGBookingApi.md#editbookinginfo) | **POST** /booking/edit-info | Edit the information related to a booking
[**filterBookings**](SWGBookingApi.md#filterbookings) | **GET** /booking/filter | Get all bookings matching a filter
[**getAllBookings**](SWGBookingApi.md#getallbookings) | **GET** /booking/all | Retrieve all bookings
[**getAllWithTrashedBookings**](SWGBookingApi.md#getallwithtrashedbookings) | **GET** /booking/all-with-trashed | Retrieve all bookings including any deleted models
[**getBooking**](SWGBookingApi.md#getbooking) | **GET** /booking | Retrieve a booking by ID
[**getCustomerBookings**](SWGBookingApi.md#getcustomerbookings) | **GET** /booking/customer | Get all bookings for a customer
[**getPayments**](SWGBookingApi.md#getpayments) | **GET** /booking/payments | Retrieve all payments made for a booking
[**getRefunds**](SWGBookingApi.md#getrefunds) | **GET** /booking/refunds | Retrieve all refunds for a booking
[**getTodaysBookings**](SWGBookingApi.md#gettodaysbookings) | **GET** /booking/today | Get all bookings made today
[**getTommorowsBookings**](SWGBookingApi.md#gettommorowsbookings) | **GET** /booking/tommorow | Get all bookings made today
[**initBooking**](SWGBookingApi.md#initbooking) | **POST** /booking/init | Create a new empty booking
[**removeBookingDetail**](SWGBookingApi.md#removebookingdetail) | **POST** /booking/remove-detail | Remove a detail from a booking
[**resendConfirmation**](SWGBookingApi.md#resendconfirmation) | **POST** /booking/resend-confirmation | Resend the confirmation email to the lead customer
[**reserveBooking**](SWGBookingApi.md#reservebooking) | **POST** /booking/reserve | Reserve a booking and its sessions capcity until a set date
[**saveBooking**](SWGBookingApi.md#savebooking) | **POST** /booking/save | Save a booking as a quote and release all capacity of sessions
[**setLeadCustomer**](SWGBookingApi.md#setleadcustomer) | **POST** /booking/set-lead | Set the lead customer for a booking


# **addBookingDetail**
```objc
-(NSNumber*) addBookingDetailWithBookingId: (NSNumber*) bookingId
    customerId: (NSNumber*) customerId
    ticketId: (NSNumber*) ticketId
    sessionId: (NSNumber*) sessionId
    boatroomId: (NSNumber*) boatroomId
    trainingSessionId: (NSNumber*) trainingSessionId
    temporary: (NSNumber*) temporary
    packageId: (NSNumber*) packageId
    packagefacadeId: (NSNumber*) packagefacadeId
    courseId: (NSNumber*) courseId
        completionHandler: (void (^)(SWGInlineResponse20010* output, NSError* error)) handler;
```

Add a package / course / ticket with its session to the booking

### Example 
```objc

NSNumber* bookingId = @789; // 
NSNumber* customerId = @789; // 
NSNumber* ticketId = @789; //  (optional)
NSNumber* sessionId = @789; //  (optional)
NSNumber* boatroomId = @789; //  (optional)
NSNumber* trainingSessionId = @789; //  (optional)
NSNumber* temporary = @true; //  (optional)
NSNumber* packageId = @789; //  (optional)
NSNumber* packagefacadeId = @789; //  (optional)
NSNumber* courseId = @789; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Add a package / course / ticket with its session to the booking
[apiInstance addBookingDetailWithBookingId:bookingId
              customerId:customerId
              ticketId:ticketId
              sessionId:sessionId
              boatroomId:boatroomId
              trainingSessionId:trainingSessionId
              temporary:temporary
              packageId:packageId
              packagefacadeId:packagefacadeId
              courseId:courseId
          completionHandler: ^(SWGInlineResponse20010* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->addBookingDetail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 
 **customerId** | **NSNumber***|  | 
 **ticketId** | **NSNumber***|  | [optional] 
 **sessionId** | **NSNumber***|  | [optional] 
 **boatroomId** | **NSNumber***|  | [optional] 
 **trainingSessionId** | **NSNumber***|  | [optional] 
 **temporary** | **NSNumber***|  | [optional] 
 **packageId** | **NSNumber***|  | [optional] 
 **packagefacadeId** | **NSNumber***|  | [optional] 
 **courseId** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20010***](SWGInlineResponse20010.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachAccommodation**
```objc
-(NSNumber*) attachAccommodationWithBookingId: (NSNumber*) bookingId
    accommodationId: (NSNumber*) accommodationId
    customerId: (NSNumber*) customerId
    start: (NSDate*) start
    end: (NSDate*) end
        completionHandler: (void (^)(SWGInlineResponse2008* output, NSError* error)) handler;
```

Attach an accommodation booking to a booking

### Example 
```objc

NSNumber* bookingId = @789; // 
NSNumber* accommodationId = @789; // 
NSNumber* customerId = @789; // 
NSDate* start = @"2013-10-20"; //  (optional)
NSDate* end = @"2013-10-20"; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Attach an accommodation booking to a booking
[apiInstance attachAccommodationWithBookingId:bookingId
              accommodationId:accommodationId
              customerId:customerId
              start:start
              end:end
          completionHandler: ^(SWGInlineResponse2008* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->attachAccommodation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 
 **accommodationId** | **NSNumber***|  | 
 **customerId** | **NSNumber***|  | 
 **start** | **NSDate***|  | [optional] 
 **end** | **NSDate***|  | [optional] 

### Return type

[**SWGInlineResponse2008***](SWGInlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachAddon**
```objc
-(NSNumber*) attachAddonWithBookingId: (NSNumber*) bookingId
    bookingdetailId: (NSNumber*) bookingdetailId
    addonId: (NSNumber*) addonId
    quantity: (NSNumber*) quantity
    packagefacadeId: (NSNumber*) packagefacadeId
        completionHandler: (void (^)(SWGInlineResponse2009* output, NSError* error)) handler;
```

Attach an addon to a trip of a booking

### Example 
```objc

NSNumber* bookingId = @789; // 
NSNumber* bookingdetailId = @789; // 
NSNumber* addonId = @789; // 
NSNumber* quantity = @789; //  (optional)
NSNumber* packagefacadeId = @789; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Attach an addon to a trip of a booking
[apiInstance attachAddonWithBookingId:bookingId
              bookingdetailId:bookingdetailId
              addonId:addonId
              quantity:quantity
              packagefacadeId:packagefacadeId
          completionHandler: ^(SWGInlineResponse2009* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->attachAddon: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 
 **bookingdetailId** | **NSNumber***|  | 
 **addonId** | **NSNumber***|  | 
 **quantity** | **NSNumber***|  | [optional] 
 **packagefacadeId** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse2009***](SWGInlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachPickup**
```objc
-(NSNumber*) attachPickupWithBookingId: (NSNumber*) bookingId
    location: (NSString*) location
    date: (NSDate*) date
    time: (NSString*) time
        completionHandler: (void (^)(SWGInlineResponse20011* output, NSError* error)) handler;
```

Attach a pickup location for a booking

### Example 
```objc

NSNumber* bookingId = @789; // 
NSString* location = @"location_example"; // 
NSDate* date = @"2013-10-20"; // 
NSString* time = @"time_example"; // 

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Attach a pickup location for a booking
[apiInstance attachPickupWithBookingId:bookingId
              location:location
              date:date
              time:time
          completionHandler: ^(SWGInlineResponse20011* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->attachPickup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 
 **location** | **NSString***|  | 
 **date** | **NSDate***|  | 
 **time** | **NSString***|  | 

### Return type

[**SWGInlineResponse20011***](SWGInlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelBooking**
```objc
-(NSNumber*) cancelBookingWithBookingId: (NSNumber*) bookingId
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Cancel a booking

### Example 
```objc

NSNumber* bookingId = @789; // 

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Cancel a booking
[apiInstance cancelBookingWithBookingId:bookingId
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->cancelBooking: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirmBooking**
```objc
-(NSNumber*) confirmBookingWithBookingId: (NSNumber*) bookingId
        completionHandler: (void (^)(SWGInlineResponse20012* output, NSError* error)) handler;
```

Confirm a booking and all of its sessions and notify the lead customer

### Example 
```objc

NSNumber* bookingId = @789; // 

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Confirm a booking and all of its sessions and notify the lead customer
[apiInstance confirmBookingWithBookingId:bookingId
          completionHandler: ^(SWGInlineResponse20012* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->confirmBooking: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse20012***](SWGInlineResponse20012.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBooking**
```objc
-(NSNumber*) deleteBookingWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete a booking by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Delete a booking by ID
[apiInstance deleteBookingWithId:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->deleteBooking: %@", error);
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

# **dettachAccommodation**
```objc
-(NSNumber*) dettachAccommodationWithBookingId: (NSNumber*) bookingId
    accommodationId: (NSNumber*) accommodationId
    customerId: (NSNumber*) customerId
    start: (NSDate*) start
        completionHandler: (void (^)(SWGInlineResponse20017* output, NSError* error)) handler;
```

Dettach an accommodation booking to a booking

### Example 
```objc

NSNumber* bookingId = @789; // 
NSNumber* accommodationId = @789; // 
NSNumber* customerId = @789; // 
NSDate* start = @"2013-10-20"; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Dettach an accommodation booking to a booking
[apiInstance dettachAccommodationWithBookingId:bookingId
              accommodationId:accommodationId
              customerId:customerId
              start:start
          completionHandler: ^(SWGInlineResponse20017* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->dettachAccommodation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 
 **accommodationId** | **NSNumber***|  | 
 **customerId** | **NSNumber***|  | 
 **start** | **NSDate***|  | [optional] 

### Return type

[**SWGInlineResponse20017***](SWGInlineResponse20017.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dettachAddon**
```objc
-(NSNumber*) dettachAddonWithBookingId: (NSNumber*) bookingId
    bookingdetailId: (NSNumber*) bookingdetailId
    addonId: (NSNumber*) addonId
    packagefacadeId: (NSNumber*) packagefacadeId
        completionHandler: (void (^)(SWGInlineResponse20017* output, NSError* error)) handler;
```

Dettach an addon to a trip of a booking

### Example 
```objc

NSNumber* bookingId = @789; // 
NSNumber* bookingdetailId = @789; // 
NSNumber* addonId = @789; // 
NSNumber* packagefacadeId = @789; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Dettach an addon to a trip of a booking
[apiInstance dettachAddonWithBookingId:bookingId
              bookingdetailId:bookingdetailId
              addonId:addonId
              packagefacadeId:packagefacadeId
          completionHandler: ^(SWGInlineResponse20017* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->dettachAddon: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 
 **bookingdetailId** | **NSNumber***|  | 
 **addonId** | **NSNumber***|  | 
 **packagefacadeId** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20017***](SWGInlineResponse20017.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dettachPickup**
```objc
-(NSNumber*) dettachPickupWithBookingId: (NSNumber*) bookingId
    _id: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Dettach a pickup location for a booking

### Example 
```objc

NSNumber* bookingId = @789; // 
NSNumber* _id = @789; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Dettach a pickup location for a booking
[apiInstance dettachPickupWithBookingId:bookingId
              _id:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->dettachPickup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 
 **_id** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editBookingInfo**
```objc
-(NSNumber*) editBookingInfoWithBookingId: (NSNumber*) bookingId
    discount: (NSNumber*) discount
    comment: (NSString*) comment
        completionHandler: (void (^)(SWGInlineResponse20014* output, NSError* error)) handler;
```

Edit the information related to a booking

### Example 
```objc

NSNumber* bookingId = @789; //  (optional)
NSNumber* discount = @1.2; //  (optional)
NSString* comment = @"comment_example"; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Edit the information related to a booking
[apiInstance editBookingInfoWithBookingId:bookingId
              discount:discount
              comment:comment
          completionHandler: ^(SWGInlineResponse20014* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->editBookingInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | [optional] 
 **discount** | **NSNumber***|  | [optional] 
 **comment** | **NSString***|  | [optional] 

### Return type

[**SWGInlineResponse20014***](SWGInlineResponse20014.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterBookings**
```objc
-(NSNumber*) filterBookingsWithReference: (NSString*) reference
    date: (NSDate*) date
    lastname: (NSString*) lastname
        completionHandler: (void (^)(SWGInlineResponse20013* output, NSError* error)) handler;
```

Get all bookings matching a filter

### Example 
```objc

NSString* reference = @"reference_example"; //  (optional)
NSDate* date = @"2013-10-20"; //  (optional)
NSString* lastname = @"lastname_example"; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Get all bookings matching a filter
[apiInstance filterBookingsWithReference:reference
              date:date
              lastname:lastname
          completionHandler: ^(SWGInlineResponse20013* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->filterBookings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference** | **NSString***|  | [optional] 
 **date** | **NSDate***|  | [optional] 
 **lastname** | **NSString***|  | [optional] 

### Return type

[**SWGInlineResponse20013***](SWGInlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllBookings**
```objc
-(NSNumber*) getAllBookingsWithCompletionHandler: 
        (void (^)(NSArray<SWGBooking>* output, NSError* error)) handler;
```

Retrieve all bookings

### Example 
```objc


SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Retrieve all bookings
[apiInstance getAllBookingsWithCompletionHandler: 
          ^(NSArray<SWGBooking>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->getAllBookings: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGBooking>***](SWGBooking.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedBookings**
```objc
-(NSNumber*) getAllWithTrashedBookingsWithCompletionHandler: 
        (void (^)(NSArray<SWGBooking>* output, NSError* error)) handler;
```

Retrieve all bookings including any deleted models

### Example 
```objc


SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Retrieve all bookings including any deleted models
[apiInstance getAllWithTrashedBookingsWithCompletionHandler: 
          ^(NSArray<SWGBooking>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->getAllWithTrashedBookings: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGBooking>***](SWGBooking.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBooking**
```objc
-(NSNumber*) getBookingWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2007* output, NSError* error)) handler;
```

Retrieve a booking by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Retrieve a booking by ID
[apiInstance getBookingWithId:_id
          completionHandler: ^(SWGInlineResponse2007* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->getBooking: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse2007***](SWGInlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerBookings**
```objc
-(NSNumber*) getCustomerBookingsWithCustomerId: (NSNumber*) customerId
        completionHandler: (void (^)(SWGInlineResponse20013* output, NSError* error)) handler;
```

Get all bookings for a customer

### Example 
```objc

NSNumber* customerId = @789; // 

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Get all bookings for a customer
[apiInstance getCustomerBookingsWithCustomerId:customerId
          completionHandler: ^(SWGInlineResponse20013* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->getCustomerBookings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse20013***](SWGInlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPayments**
```objc
-(NSNumber*) getPaymentsWithBookingId: (NSNumber*) bookingId
        completionHandler: (void (^)(SWGInlineResponse20015* output, NSError* error)) handler;
```

Retrieve all payments made for a booking

### Example 
```objc

NSNumber* bookingId = @789; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Retrieve all payments made for a booking
[apiInstance getPaymentsWithBookingId:bookingId
          completionHandler: ^(SWGInlineResponse20015* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->getPayments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20015***](SWGInlineResponse20015.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRefunds**
```objc
-(NSNumber*) getRefundsWithBookingId: (NSNumber*) bookingId
        completionHandler: (void (^)(SWGInlineResponse20016* output, NSError* error)) handler;
```

Retrieve all refunds for a booking

### Example 
```objc

NSNumber* bookingId = @789; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Retrieve all refunds for a booking
[apiInstance getRefundsWithBookingId:bookingId
          completionHandler: ^(SWGInlineResponse20016* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->getRefunds: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20016***](SWGInlineResponse20016.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTodaysBookings**
```objc
-(NSNumber*) getTodaysBookingsWithCompletionHandler: 
        (void (^)(SWGInlineResponse20013* output, NSError* error)) handler;
```

Get all bookings made today

### Example 
```objc


SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Get all bookings made today
[apiInstance getTodaysBookingsWithCompletionHandler: 
          ^(SWGInlineResponse20013* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->getTodaysBookings: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGInlineResponse20013***](SWGInlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTommorowsBookings**
```objc
-(NSNumber*) getTommorowsBookingsWithCompletionHandler: 
        (void (^)(SWGInlineResponse20013* output, NSError* error)) handler;
```

Get all bookings made today

### Example 
```objc


SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Get all bookings made today
[apiInstance getTommorowsBookingsWithCompletionHandler: 
          ^(SWGInlineResponse20013* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->getTommorowsBookings: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGInlineResponse20013***](SWGInlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initBooking**
```objc
-(NSNumber*) initBookingWithSource: (NSString*) source
    agentId: (NSNumber*) agentId
    agentReference: (NSString*) agentReference
        completionHandler: (void (^)(SWGInlineResponse201* output, NSError* error)) handler;
```

Create a new empty booking

### Example 
```objc

NSString* source = @"source_example"; // 
NSNumber* agentId = @789; //  (optional)
NSString* agentReference = @"agentReference_example"; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Create a new empty booking
[apiInstance initBookingWithSource:source
              agentId:agentId
              agentReference:agentReference
          completionHandler: ^(SWGInlineResponse201* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->initBooking: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **NSString***|  | 
 **agentId** | **NSNumber***|  | [optional] 
 **agentReference** | **NSString***|  | [optional] 

### Return type

[**SWGInlineResponse201***](SWGInlineResponse201.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeBookingDetail**
```objc
-(NSNumber*) removeBookingDetailWithBookingId: (NSNumber*) bookingId
    bookingdetailId: (NSNumber*) bookingdetailId
        completionHandler: (void (^)(SWGInlineResponse20017* output, NSError* error)) handler;
```

Remove a detail from a booking

### Example 
```objc

NSNumber* bookingId = @789; // 
NSNumber* bookingdetailId = @789; // 

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Remove a detail from a booking
[apiInstance removeBookingDetailWithBookingId:bookingId
              bookingdetailId:bookingdetailId
          completionHandler: ^(SWGInlineResponse20017* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->removeBookingDetail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 
 **bookingdetailId** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse20017***](SWGInlineResponse20017.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resendConfirmation**
```objc
-(NSNumber*) resendConfirmationWithBookingId: (NSNumber*) bookingId
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Resend the confirmation email to the lead customer

### Example 
```objc

NSNumber* bookingId = @789; // 

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Resend the confirmation email to the lead customer
[apiInstance resendConfirmationWithBookingId:bookingId
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->resendConfirmation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reserveBooking**
```objc
-(NSNumber*) reserveBookingWithBookingId: (NSNumber*) bookingId
    reservedUntil: (NSDate*) reservedUntil
        completionHandler: (void (^)(SWGInlineResponse20018* output, NSError* error)) handler;
```

Reserve a booking and its sessions capcity until a set date

### Example 
```objc

NSNumber* bookingId = @789; // 
NSDate* reservedUntil = @"2013-10-20"; //  (optional)

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Reserve a booking and its sessions capcity until a set date
[apiInstance reserveBookingWithBookingId:bookingId
              reservedUntil:reservedUntil
          completionHandler: ^(SWGInlineResponse20018* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->reserveBooking: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 
 **reservedUntil** | **NSDate***|  | [optional] 

### Return type

[**SWGInlineResponse20018***](SWGInlineResponse20018.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveBooking**
```objc
-(NSNumber*) saveBookingWithBookingId: (NSNumber*) bookingId
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Save a booking as a quote and release all capacity of sessions

### Example 
```objc

NSNumber* bookingId = @789; // 

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Save a booking as a quote and release all capacity of sessions
[apiInstance saveBookingWithBookingId:bookingId
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->saveBooking: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setLeadCustomer**
```objc
-(NSNumber*) setLeadCustomerWithBookingId: (NSNumber*) bookingId
    customerId: (NSNumber*) customerId
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Set the lead customer for a booking

### Example 
```objc

NSNumber* bookingId = @789; // 
NSNumber* customerId = @789; // 

SWGBookingApi*apiInstance = [[SWGBookingApi alloc] init];

// Set the lead customer for a booking
[apiInstance setLeadCustomerWithBookingId:bookingId
              customerId:customerId
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBookingApi->setLeadCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSNumber***|  | 
 **customerId** | **NSNumber***|  | 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

