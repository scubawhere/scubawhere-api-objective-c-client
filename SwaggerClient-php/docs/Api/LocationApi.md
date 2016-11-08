# Swagger\Client\LocationApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachLocation**](LocationApi.md#attachLocation) | **POST** /location/attach | Attach a location to a company
[**createLocation**](LocationApi.md#createLocation) | **POST** /location/add | Create a location
[**dettachLocation**](LocationApi.md#dettachLocation) | **POST** /location/dettach | Dettach a location to a company
[**getAllLocations**](LocationApi.md#getAllLocations) | **GET** /location/all | Retrieve all locations associated with the company
[**getLocationTags**](LocationApi.md#getLocationTags) | **GET** /location/tags | Retrieve all tags associated to all locations
[**updateLocation**](LocationApi.md#updateLocation) | **PUT** /location/edit | Update a location


# **attachLocation**
> \Swagger\Client\Model\InlineResponse2003 attachLocation($location_id)

Attach a location to a company

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\LocationApi();
$location_id = 789; // int | 

try {
    $result = $api_instance->attachLocation($location_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocationApi->attachLocation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **createLocation**
> \Swagger\Client\Model\InlineResponse2003 createLocation($name, $description, $latitude, $longitude, $tags)

Create a location

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\LocationApi();
$name = "name_example"; // string | 
$description = "description_example"; // string | 
$latitude = 3.4; // float | 
$longitude = 3.4; // float | 
$tags = array(56); // int[] | 

try {
    $result = $api_instance->createLocation($name, $description, $latitude, $longitude, $tags);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocationApi->createLocation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |
 **description** | **string**|  | [optional]
 **latitude** | **float**|  | [optional]
 **longitude** | **float**|  | [optional]
 **tags** | [**int[]**](../Model/int.md)|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **dettachLocation**
> \Swagger\Client\Model\InlineResponse2003 dettachLocation($location_id)

Dettach a location to a company

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\LocationApi();
$location_id = 789; // int | 

try {
    $result = $api_instance->dettachLocation($location_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocationApi->dettachLocation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllLocations**
> \Swagger\Client\Model\InlineResponse2003 getAllLocations()

Retrieve all locations associated with the company

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\LocationApi();

try {
    $result = $api_instance->getAllLocations();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocationApi->getAllLocations: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getLocationTags**
> \Swagger\Client\Model\InlineResponse2003 getLocationTags()

Retrieve all tags associated to all locations

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\LocationApi();

try {
    $result = $api_instance->getLocationTags();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocationApi->getLocationTags: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateLocation**
> \Swagger\Client\Model\InlineResponse2003 updateLocation($location_id, $description)

Update a location

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\LocationApi();
$location_id = 789; // int | 
$description = 789; // int | 

try {
    $result = $api_instance->updateLocation($location_id, $description);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocationApi->updateLocation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **int**|  |
 **description** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

