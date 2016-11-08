# Swagger\Client\TripApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTrip**](TripApi.md#createTrip) | **POST** /trip/add | Create a new trip
[**deleteTrip**](TripApi.md#deleteTrip) | **DELETE** /trip/delete | Delete a trip by ID
[**editTrip**](TripApi.md#editTrip) | **POST** /trip/edit | Update a trip by ID
[**getAllTrips**](TripApi.md#getAllTrips) | **GET** /trip/all | Retrieve all trips including any deleted models
[**getAllWithTrashedTrips**](TripApi.md#getAllWithTrashedTrips) | **GET** /trip/all-with-trashed | Retrieve all trips including any deleted models
[**tripGet**](TripApi.md#tripGet) | **GET** /trip | Retrieve a trip by ID


# **createTrip**
> \Swagger\Client\Model\InlineResponse20046 createTrip($name, $duration, $locations, $tags, $description, $boat_required)

Create a new trip

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TripApi();
$name = "name_example"; // string | 
$duration = 3.4; // float | 
$locations = array(56); // int[] | 
$tags = array(56); // int[] | 
$description = "description_example"; // string | 
$boat_required = true; // bool | 

try {
    $result = $api_instance->createTrip($name, $duration, $locations, $tags, $description, $boat_required);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TripApi->createTrip: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |
 **duration** | **float**|  |
 **locations** | [**int[]**](../Model/int.md)|  |
 **tags** | [**int[]**](../Model/int.md)|  |
 **description** | **string**|  | [optional]
 **boat_required** | **bool**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20046**](../Model/InlineResponse20046.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteTrip**
> \Swagger\Client\Model\InlineResponse2003 deleteTrip($id)

Delete a trip by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TripApi();
$id = 789; // int | 

try {
    $result = $api_instance->deleteTrip($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TripApi->deleteTrip: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **editTrip**
> \Swagger\Client\Model\InlineResponse20047 editTrip($id, $name, $duration, $locations, $tags, $description, $boat_required)

Update a trip by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TripApi();
$id = 789; // int | 
$name = "name_example"; // string | 
$duration = 3.4; // float | 
$locations = array(56); // int[] | 
$tags = array(56); // int[] | 
$description = "description_example"; // string | 
$boat_required = true; // bool | 

try {
    $result = $api_instance->editTrip($id, $name, $duration, $locations, $tags, $description, $boat_required);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TripApi->editTrip: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **name** | **string**|  |
 **duration** | **float**|  |
 **locations** | [**int[]**](../Model/int.md)|  |
 **tags** | [**int[]**](../Model/int.md)|  |
 **description** | **string**|  | [optional]
 **boat_required** | **bool**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20047**](../Model/InlineResponse20047.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllTrips**
> \Swagger\Client\Model\Trip[] getAllTrips()

Retrieve all trips including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TripApi();

try {
    $result = $api_instance->getAllTrips();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TripApi->getAllTrips: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Trip[]**](../Model/Trip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedTrips**
> \Swagger\Client\Model\Trip[] getAllWithTrashedTrips()

Retrieve all trips including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TripApi();

try {
    $result = $api_instance->getAllWithTrashedTrips();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TripApi->getAllWithTrashedTrips: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Trip[]**](../Model/Trip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **tripGet**
> \Swagger\Client\Model\Trip tripGet($id)

Retrieve a trip by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TripApi();
$id = 789; // int | 

try {
    $result = $api_instance->tripGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TripApi->tripGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\Trip**](../Model/Trip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

