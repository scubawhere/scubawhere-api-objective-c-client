# Swagger\Client\CompanyApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachLocations**](CompanyApi.md#attachLocations) | **POST** /company/add-location | Attach a location to a company
[**getLocations**](CompanyApi.md#getLocations) | **GET** /company/locations | Retrieve the locations this Dive Centre uses
[**getPickupSchedule**](CompanyApi.md#getPickupSchedule) | **GET** /company/pick-up-schedule | Retrieve the pick up schedule for a date
[**updateCompany**](CompanyApi.md#updateCompany) | **POST** /company/update | Update the companies information


# **attachLocations**
> \Swagger\Client\Model\InlineResponse20023 attachLocations($name, $description, $latitude, $longitude)

Attach a location to a company

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CompanyApi();
$name = "name_example"; // string | 
$description = "description_example"; // string | 
$latitude = 3.4; // float | 
$longitude = 3.4; // float | 

try {
    $result = $api_instance->attachLocations($name, $description, $latitude, $longitude);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CompanyApi->attachLocations: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | [optional]
 **description** | **string**|  | [optional]
 **latitude** | **float**|  | [optional]
 **longitude** | **float**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20023**](../Model/InlineResponse20023.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getLocations**
> \Swagger\Client\Model\InlineResponse20024 getLocations($latitude, $longitude, $limit)

Retrieve the locations this Dive Centre uses

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CompanyApi();
$latitude = "latitude_example"; // string | 
$longitude = "longitude_example"; // string | 
$limit = 56; // int | 

try {
    $result = $api_instance->getLocations($latitude, $longitude, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CompanyApi->getLocations: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **string**|  |
 **longitude** | **string**|  |
 **limit** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20024**](../Model/InlineResponse20024.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPickupSchedule**
> \Swagger\Client\Model\InlineResponse20025 getPickupSchedule($date)

Retrieve the pick up schedule for a date

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CompanyApi();
$date = "date_example"; // string | 

try {
    $result = $api_instance->getPickupSchedule($date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CompanyApi->getPickupSchedule: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **string**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20025**](../Model/InlineResponse20025.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateCompany**
> \Swagger\Client\Model\InlineResponse20026 updateCompany($id, $contact, $description, $name, $address_1, $address_2, $city, $county, $postcode, $country_id, $currency_id, $business_phone, $business_email, $vat_number, $registration_number, $website)

Update the companies information

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CompanyApi();
$id = 789; // int | 
$contact = "contact_example"; // string | 
$description = "description_example"; // string | 
$name = "name_example"; // string | 
$address_1 = "address_1_example"; // string | 
$address_2 = "address_2_example"; // string | 
$city = "city_example"; // string | 
$county = "county_example"; // string | 
$postcode = "postcode_example"; // string | 
$country_id = 789; // int | 
$currency_id = 789; // int | 
$business_phone = "business_phone_example"; // string | 
$business_email = "business_email_example"; // string | 
$vat_number = "vat_number_example"; // string | 
$registration_number = "registration_number_example"; // string | 
$website = "website_example"; // string | 

try {
    $result = $api_instance->updateCompany($id, $contact, $description, $name, $address_1, $address_2, $city, $county, $postcode, $country_id, $currency_id, $business_phone, $business_email, $vat_number, $registration_number, $website);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CompanyApi->updateCompany: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **contact** | **string**|  | [optional]
 **description** | **string**|  | [optional]
 **name** | **string**|  | [optional]
 **address_1** | **string**|  | [optional]
 **address_2** | **string**|  | [optional]
 **city** | **string**|  | [optional]
 **county** | **string**|  | [optional]
 **postcode** | **string**|  | [optional]
 **country_id** | **int**|  | [optional]
 **currency_id** | **int**|  | [optional]
 **business_phone** | **string**|  | [optional]
 **business_email** | **string**|  | [optional]
 **vat_number** | **string**|  | [optional]
 **registration_number** | **string**|  | [optional]
 **website** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20026**](../Model/InlineResponse20026.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

