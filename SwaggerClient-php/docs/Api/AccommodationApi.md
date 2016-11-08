# Swagger\Client\AccommodationApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAccommodation**](AccommodationApi.md#addAccommodation) | **POST** /accommodation/add | 
[**deleteAccommodation**](AccommodationApi.md#deleteAccommodation) | **DELETE** /accommodation/delete | Delete an accommodation by ID
[**editAgent**](AccommodationApi.md#editAgent) | **POST** /agent/edit | Create a new agent
[**filterAccommodation**](AccommodationApi.md#filterAccommodation) | **GET** /accommodation/filter | Get all the accommodations matching a filter
[**findAccommodation**](AccommodationApi.md#findAccommodation) | **GET** /accommodation | 
[**getAllAccommodations**](AccommodationApi.md#getAllAccommodations) | **GET** /accommodations/all | 
[**getAllWithTrashedAccommodations**](AccommodationApi.md#getAllWithTrashedAccommodations) | **GET** /accommodations/all-with-trashed | Retrieve all accommodation including any deleted models
[**updateAccommodation**](AccommodationApi.md#updateAccommodation) | **PUT** /accommodation/edit | Update an Accommodation


# **addAccommodation**
> \Swagger\Client\Model\InlineResponse200 addAccommodation($name, $capacity, $base_prices, $description)



Create an accommodation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AccommodationApi();
$name = "name_example"; // string | Name of the type of accommodation
$capacity = 789; // int | Number of beds in the accommodation
$base_prices = 56; // int | Price of the accommodation and the dates of when the price is applicable
$description = "description_example"; // string | Description of the accommodation

try {
    $result = $api_instance->addAccommodation($name, $capacity, $base_prices, $description);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccommodationApi->addAccommodation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the type of accommodation |
 **capacity** | **int**| Number of beds in the accommodation |
 **base_prices** | **int**| Price of the accommodation and the dates of when the price is applicable |
 **description** | **string**| Description of the accommodation | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse200**](../Model/InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteAccommodation**
> \Swagger\Client\Model\InlineResponse200 deleteAccommodation($body)

Delete an accommodation by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AccommodationApi();
$body = 789; // int | ID of the accommodation

try {
    $result = $api_instance->deleteAccommodation($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccommodationApi->deleteAccommodation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **int**| ID of the accommodation |

### Return type

[**\Swagger\Client\Model\InlineResponse200**](../Model/InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **editAgent**
> \Swagger\Client\Model\InlineResponse2004 editAgent($id, $name, $branch_name, $branch_address, $branch_phone, $branch_email, $commission, $terms, $website, $billing_address, $billing_phone, $billing_email)

Create a new agent

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AccommodationApi();
$id = 789; // int | 
$name = 789; // int | 
$branch_name = "branch_name_example"; // string | 
$branch_address = "branch_address_example"; // string | 
$branch_phone = "branch_phone_example"; // string | 
$branch_email = "branch_email_example"; // string | 
$commission = 3.4; // float | 
$terms = "terms_example"; // string | 
$website = "website_example"; // string | 
$billing_address = "billing_address_example"; // string | 
$billing_phone = "billing_phone_example"; // string | 
$billing_email = "billing_email_example"; // string | 

try {
    $result = $api_instance->editAgent($id, $name, $branch_name, $branch_address, $branch_phone, $branch_email, $commission, $terms, $website, $billing_address, $billing_phone, $billing_email);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccommodationApi->editAgent: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **name** | **int**|  |
 **branch_name** | **string**|  |
 **branch_address** | **string**|  |
 **branch_phone** | **string**|  |
 **branch_email** | **string**|  |
 **commission** | **float**|  |
 **terms** | **string**|  |
 **website** | **string**|  | [optional]
 **billing_address** | **string**|  | [optional]
 **billing_phone** | **string**|  | [optional]
 **billing_email** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2004**](../Model/InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **filterAccommodation**
> \Swagger\Client\Model\InlineResponse200 filterAccommodation($before, $after, $accommodation_id)

Get all the accommodations matching a filter

Get all the accommodations and their bookings between certain dates and / or an accommodation id

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AccommodationApi();
$before = new \DateTime(); // \DateTime | The date for the upper boundary of the dates
$after = new \DateTime(); // \DateTime | The date for the lower boundary of the dates
$accommodation_id = 789; // int | ID Accommodation to filter by

try {
    $result = $api_instance->filterAccommodation($before, $after, $accommodation_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccommodationApi->filterAccommodation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **\DateTime**| The date for the upper boundary of the dates | [optional]
 **after** | **\DateTime**| The date for the lower boundary of the dates | [optional]
 **accommodation_id** | **int**| ID Accommodation to filter by | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse200**](../Model/InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **findAccommodation**
> \Swagger\Client\Model\InlineResponse200 findAccommodation($id)



Retrieve an accommodation by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AccommodationApi();
$id = array(56); // int[] | ID of the accommodation to be retrieved

try {
    $result = $api_instance->findAccommodation($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccommodationApi->findAccommodation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**int[]**](../Model/int.md)| ID of the accommodation to be retrieved |

### Return type

[**\Swagger\Client\Model\InlineResponse200**](../Model/InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllAccommodations**
> \Swagger\Client\Model\Accommodation[] getAllAccommodations()



Retrieve all accommodation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AccommodationApi();

try {
    $result = $api_instance->getAllAccommodations();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccommodationApi->getAllAccommodations: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Accommodation[]**](../Model/Accommodation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedAccommodations**
> \Swagger\Client\Model\Accommodation[] getAllWithTrashedAccommodations()

Retrieve all accommodation including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AccommodationApi();

try {
    $result = $api_instance->getAllWithTrashedAccommodations();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccommodationApi->getAllWithTrashedAccommodations: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Accommodation[]**](../Model/Accommodation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAccommodation**
> \Swagger\Client\Model\InlineResponse200 updateAccommodation($id, $name, $capacity)

Update an Accommodation

Updates the accommodation by id using the specified fields

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AccommodationApi();
$id = 789; // int | ID of the Accommodation to be updated
$name = "name_example"; // string | Name of the Accommodation
$capacity = 789; // int | Number of rooms the accommodation holds

try {
    $result = $api_instance->updateAccommodation($id, $name, $capacity);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccommodationApi->updateAccommodation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the Accommodation to be updated |
 **name** | **string**| Name of the Accommodation | [optional]
 **capacity** | **int**| Number of rooms the accommodation holds | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse200**](../Model/InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

