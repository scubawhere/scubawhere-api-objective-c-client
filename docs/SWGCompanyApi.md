# SWGCompanyApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachLocations**](SWGCompanyApi.md#attachlocations) | **POST** /company/add-location | Attach a location to a company
[**getLocations**](SWGCompanyApi.md#getlocations) | **GET** /company/locations | Retrieve the locations this Dive Centre uses
[**getPickupSchedule**](SWGCompanyApi.md#getpickupschedule) | **GET** /company/pick-up-schedule | Retrieve the pick up schedule for a date
[**updateCompany**](SWGCompanyApi.md#updatecompany) | **POST** /company/update | Update the companies information


# **attachLocations**
```objc
-(NSNumber*) attachLocationsWithName: (NSString*) name
    _description: (NSString*) _description
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
        completionHandler: (void (^)(SWGInlineResponse20023* output, NSError* error)) handler;
```

Attach a location to a company

### Example 
```objc

NSString* name = @"name_example"; //  (optional)
NSString* _description = @"_description_example"; //  (optional)
NSNumber* latitude = @3.4; //  (optional)
NSNumber* longitude = @3.4; //  (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// Attach a location to a company
[apiInstance attachLocationsWithName:name
              _description:_description
              latitude:latitude
              longitude:longitude
          completionHandler: ^(SWGInlineResponse20023* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->attachLocations: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | [optional] 
 **_description** | **NSString***|  | [optional] 
 **latitude** | **NSNumber***|  | [optional] 
 **longitude** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20023***](SWGInlineResponse20023.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocations**
```objc
-(NSNumber*) getLocationsWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SWGInlineResponse20024* output, NSError* error)) handler;
```

Retrieve the locations this Dive Centre uses

### Example 
```objc

NSString* latitude = @"latitude_example"; // 
NSString* longitude = @"longitude_example"; // 
NSNumber* limit = @56; //  (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// Retrieve the locations this Dive Centre uses
[apiInstance getLocationsWithLatitude:latitude
              longitude:longitude
              limit:limit
          completionHandler: ^(SWGInlineResponse20024* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getLocations: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **NSString***|  | 
 **longitude** | **NSString***|  | 
 **limit** | **NSNumber***|  | [optional] 

### Return type

[**SWGInlineResponse20024***](SWGInlineResponse20024.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPickupSchedule**
```objc
-(NSNumber*) getPickupScheduleWithDate: (NSString*) date
        completionHandler: (void (^)(SWGInlineResponse20025* output, NSError* error)) handler;
```

Retrieve the pick up schedule for a date

### Example 
```objc

NSString* date = @"date_example"; // 

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// Retrieve the pick up schedule for a date
[apiInstance getPickupScheduleWithDate:date
          completionHandler: ^(SWGInlineResponse20025* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getPickupSchedule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **NSString***|  | 

### Return type

[**SWGInlineResponse20025***](SWGInlineResponse20025.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCompany**
```objc
-(NSNumber*) updateCompanyWithId: (NSNumber*) _id
    contact: (NSString*) contact
    _description: (NSString*) _description
    name: (NSString*) name
    address1: (NSString*) address1
    address2: (NSString*) address2
    city: (NSString*) city
    county: (NSString*) county
    postcode: (NSString*) postcode
    countryId: (NSNumber*) countryId
    currencyId: (NSNumber*) currencyId
    businessPhone: (NSString*) businessPhone
    businessEmail: (NSString*) businessEmail
    vatNumber: (NSString*) vatNumber
    registrationNumber: (NSString*) registrationNumber
    website: (NSString*) website
        completionHandler: (void (^)(SWGInlineResponse20026* output, NSError* error)) handler;
```

Update the companies information

### Example 
```objc

NSNumber* _id = @789; // 
NSString* contact = @"contact_example"; //  (optional)
NSString* _description = @"_description_example"; //  (optional)
NSString* name = @"name_example"; //  (optional)
NSString* address1 = @"address1_example"; //  (optional)
NSString* address2 = @"address2_example"; //  (optional)
NSString* city = @"city_example"; //  (optional)
NSString* county = @"county_example"; //  (optional)
NSString* postcode = @"postcode_example"; //  (optional)
NSNumber* countryId = @789; //  (optional)
NSNumber* currencyId = @789; //  (optional)
NSString* businessPhone = @"businessPhone_example"; //  (optional)
NSString* businessEmail = @"businessEmail_example"; //  (optional)
NSString* vatNumber = @"vatNumber_example"; //  (optional)
NSString* registrationNumber = @"registrationNumber_example"; //  (optional)
NSString* website = @"website_example"; //  (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// Update the companies information
[apiInstance updateCompanyWithId:_id
              contact:contact
              _description:_description
              name:name
              address1:address1
              address2:address2
              city:city
              county:county
              postcode:postcode
              countryId:countryId
              currencyId:currencyId
              businessPhone:businessPhone
              businessEmail:businessEmail
              vatNumber:vatNumber
              registrationNumber:registrationNumber
              website:website
          completionHandler: ^(SWGInlineResponse20026* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->updateCompany: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***|  | 
 **contact** | **NSString***|  | [optional] 
 **_description** | **NSString***|  | [optional] 
 **name** | **NSString***|  | [optional] 
 **address1** | **NSString***|  | [optional] 
 **address2** | **NSString***|  | [optional] 
 **city** | **NSString***|  | [optional] 
 **county** | **NSString***|  | [optional] 
 **postcode** | **NSString***|  | [optional] 
 **countryId** | **NSNumber***|  | [optional] 
 **currencyId** | **NSNumber***|  | [optional] 
 **businessPhone** | **NSString***|  | [optional] 
 **businessEmail** | **NSString***|  | [optional] 
 **vatNumber** | **NSString***|  | [optional] 
 **registrationNumber** | **NSString***|  | [optional] 
 **website** | **NSString***|  | [optional] 

### Return type

[**SWGInlineResponse20026***](SWGInlineResponse20026.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

