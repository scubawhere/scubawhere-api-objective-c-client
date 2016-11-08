# SWGCustomerApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](SWGCustomerApi.md#createcustomer) | **POST** /customer/add | Create a new customer
[**deleteCustomer**](SWGCustomerApi.md#deletecustomer) | **DELETE** /customer/delete | Delete a customer by ID
[**editCustomer**](SWGCustomerApi.md#editcustomer) | **POST** /customer/edit | Update a customer by ID
[**getAllCustomers**](SWGCustomerApi.md#getallcustomers) | **GET** /customer/all | Retrieve all customers
[**getCustomer**](SWGCustomerApi.md#getcustomer) | **GET** /customer | Retrieve a customer by ID


# **createCustomer**
```objc
-(NSNumber*) createCustomerWithEmail: (NSString*) email
    firstname: (NSString*) firstname
    lastname: (NSString*) lastname
    birthday: (NSDate*) birthday
    gender: (NSNumber*) gender
    address1: (NSString*) address1
    address2: (NSString*) address2
    city: (NSString*) city
    county: (NSString*) county
    postcode: (NSString*) postcode
    countryId: (NSNumber*) countryId
    phone: (NSString*) phone
    lastDive: (NSDate*) lastDive
    numberOfDives: (NSNumber*) numberOfDives
    chestSize: (NSString*) chestSize
    showSize: (NSString*) showSize
    height: (NSString*) height
    certificates: (NSArray<NSNumber*>*) certificates
        completionHandler: (void (^)(SWGInlineResponse20029* output, NSError* error)) handler;
```

Create a new customer

### Example 
```objc

NSString* email = @"email_example"; // 
NSString* firstname = @"firstname_example"; // 
NSString* lastname = @"lastname_example"; // 
NSDate* birthday = @"2013-10-20"; //  (optional)
NSNumber* gender = @56; //  (optional)
NSString* address1 = @"address1_example"; //  (optional)
NSString* address2 = @"address2_example"; //  (optional)
NSString* city = @"city_example"; //  (optional)
NSString* county = @"county_example"; //  (optional)
NSString* postcode = @"postcode_example"; //  (optional)
NSNumber* countryId = @789; //  (optional)
NSString* phone = @"phone_example"; //  (optional)
NSDate* lastDive = @"2013-10-20"; //  (optional)
NSNumber* numberOfDives = @56; //  (optional)
NSString* chestSize = @"chestSize_example"; //  (optional)
NSString* showSize = @"showSize_example"; //  (optional)
NSString* height = @"height_example"; //  (optional)
NSArray<NSNumber*>* certificates = @[@56]; //  (optional)

SWGCustomerApi*apiInstance = [[SWGCustomerApi alloc] init];

// Create a new customer
[apiInstance createCustomerWithEmail:email
              firstname:firstname
              lastname:lastname
              birthday:birthday
              gender:gender
              address1:address1
              address2:address2
              city:city
              county:county
              postcode:postcode
              countryId:countryId
              phone:phone
              lastDive:lastDive
              numberOfDives:numberOfDives
              chestSize:chestSize
              showSize:showSize
              height:height
              certificates:certificates
          completionHandler: ^(SWGInlineResponse20029* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomerApi->createCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***|  | 
 **firstname** | **NSString***|  | 
 **lastname** | **NSString***|  | 
 **birthday** | **NSDate***|  | [optional] 
 **gender** | **NSNumber***|  | [optional] 
 **address1** | **NSString***|  | [optional] 
 **address2** | **NSString***|  | [optional] 
 **city** | **NSString***|  | [optional] 
 **county** | **NSString***|  | [optional] 
 **postcode** | **NSString***|  | [optional] 
 **countryId** | **NSNumber***|  | [optional] 
 **phone** | **NSString***|  | [optional] 
 **lastDive** | **NSDate***|  | [optional] 
 **numberOfDives** | **NSNumber***|  | [optional] 
 **chestSize** | **NSString***|  | [optional] 
 **showSize** | **NSString***|  | [optional] 
 **height** | **NSString***|  | [optional] 
 **certificates** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 

### Return type

[**SWGInlineResponse20029***](SWGInlineResponse20029.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomer**
```objc
-(NSNumber*) deleteCustomerWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete a customer by ID

### Example 
```objc

NSNumber* _id = @789; // 

SWGCustomerApi*apiInstance = [[SWGCustomerApi alloc] init];

// Delete a customer by ID
[apiInstance deleteCustomerWithId:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomerApi->deleteCustomer: %@", error);
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

# **editCustomer**
```objc
-(NSNumber*) editCustomerWithId: (NSNumber*) _id
    email: (NSString*) email
    firstname: (NSString*) firstname
    lastname: (NSString*) lastname
    birthday: (NSDate*) birthday
    gender: (NSNumber*) gender
    address1: (NSString*) address1
    address2: (NSString*) address2
    city: (NSString*) city
    county: (NSString*) county
    postcode: (NSString*) postcode
    countryId: (NSNumber*) countryId
    phone: (NSString*) phone
    lastDive: (NSDate*) lastDive
    numberOfDives: (NSNumber*) numberOfDives
    chestSize: (NSString*) chestSize
    showSize: (NSString*) showSize
    height: (NSString*) height
    certificates: (NSArray<NSNumber*>*) certificates
        completionHandler: (void (^)(SWGInlineResponse20030* output, NSError* error)) handler;
```

Update a customer by ID

### Example 
```objc

NSNumber* _id = @789; // 
NSString* email = @"email_example"; //  (optional)
NSString* firstname = @"firstname_example"; //  (optional)
NSString* lastname = @"lastname_example"; //  (optional)
NSDate* birthday = @"2013-10-20"; //  (optional)
NSNumber* gender = @56; //  (optional)
NSString* address1 = @"address1_example"; //  (optional)
NSString* address2 = @"address2_example"; //  (optional)
NSString* city = @"city_example"; //  (optional)
NSString* county = @"county_example"; //  (optional)
NSString* postcode = @"postcode_example"; //  (optional)
NSNumber* countryId = @789; //  (optional)
NSString* phone = @"phone_example"; //  (optional)
NSDate* lastDive = @"2013-10-20"; //  (optional)
NSNumber* numberOfDives = @56; //  (optional)
NSString* chestSize = @"chestSize_example"; //  (optional)
NSString* showSize = @"showSize_example"; //  (optional)
NSString* height = @"height_example"; //  (optional)
NSArray<NSNumber*>* certificates = @[@56]; //  (optional)

SWGCustomerApi*apiInstance = [[SWGCustomerApi alloc] init];

// Update a customer by ID
[apiInstance editCustomerWithId:_id
              email:email
              firstname:firstname
              lastname:lastname
              birthday:birthday
              gender:gender
              address1:address1
              address2:address2
              city:city
              county:county
              postcode:postcode
              countryId:countryId
              phone:phone
              lastDive:lastDive
              numberOfDives:numberOfDives
              chestSize:chestSize
              showSize:showSize
              height:height
              certificates:certificates
          completionHandler: ^(SWGInlineResponse20030* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomerApi->editCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 
 **email** | **NSString***|  | [optional] 
 **firstname** | **NSString***|  | [optional] 
 **lastname** | **NSString***|  | [optional] 
 **birthday** | **NSDate***|  | [optional] 
 **gender** | **NSNumber***|  | [optional] 
 **address1** | **NSString***|  | [optional] 
 **address2** | **NSString***|  | [optional] 
 **city** | **NSString***|  | [optional] 
 **county** | **NSString***|  | [optional] 
 **postcode** | **NSString***|  | [optional] 
 **countryId** | **NSNumber***|  | [optional] 
 **phone** | **NSString***|  | [optional] 
 **lastDive** | **NSDate***|  | [optional] 
 **numberOfDives** | **NSNumber***|  | [optional] 
 **chestSize** | **NSString***|  | [optional] 
 **showSize** | **NSString***|  | [optional] 
 **height** | **NSString***|  | [optional] 
 **certificates** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | [optional] 

### Return type

[**SWGInlineResponse20030***](SWGInlineResponse20030.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCustomers**
```objc
-(NSNumber*) getAllCustomersWithCompletionHandler: 
        (void (^)(NSArray<SWGCustomer>* output, NSError* error)) handler;
```

Retrieve all customers

### Example 
```objc


SWGCustomerApi*apiInstance = [[SWGCustomerApi alloc] init];

// Retrieve all customers
[apiInstance getAllCustomersWithCompletionHandler: 
          ^(NSArray<SWGCustomer>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomerApi->getAllCustomers: %@", error);
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

# **getCustomer**
```objc
-(NSNumber*) getCustomerWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse20029* output, NSError* error)) handler;
```

Retrieve a customer by ID

### Example 
```objc

NSNumber* _id = @789; //  (optional)

SWGCustomerApi*apiInstance = [[SWGCustomerApi alloc] init];

// Retrieve a customer by ID
[apiInstance getCustomerWithId:_id
          completionHandler: ^(SWGInlineResponse20029* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomerApi->getCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20029***](SWGInlineResponse20029.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

