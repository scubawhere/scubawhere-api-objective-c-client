# Swagger\Client\BoatApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBoat**](BoatApi.md#createBoat) | **POST** /boat/add | Create a new boat
[**deleteBoat**](BoatApi.md#deleteBoat) | **DELETE** /boat/delete | Delete a boat by ID
[**editBoat**](BoatApi.md#editBoat) | **POST** /boat/edit | Update a boat by ID
[**getAllBoats**](BoatApi.md#getAllBoats) | **GET** /boat/all | Retrieve all boats
[**getAllWithTrashedBoats**](BoatApi.md#getAllWithTrashedBoats) | **GET** /boat/all-with-trashed | Retrieve all agents including any deleted models
[**getBoat**](BoatApi.md#getBoat) | **GET** /boat | Retrieve a boat by ID


# **createBoat**
> \Swagger\Client\Model\InlineResponse2005 createBoat($name, $capacity, $description, $boatrooms)

Create a new boat

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatApi();
$name = "name_example"; // string | 
$capacity = 789; // int | 
$description = "description_example"; // string | 
$boatrooms = array(56); // int[] | 

try {
    $result = $api_instance->createBoat($name, $capacity, $description, $boatrooms);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatApi->createBoat: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |
 **capacity** | **int**|  |
 **description** | **string**|  | [optional]
 **boatrooms** | [**int[]**](../Model/int.md)|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2005**](../Model/InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteBoat**
> \Swagger\Client\Model\InlineResponse2003 deleteBoat($id)

Delete a boat by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatApi();
$id = 789; // int | 

try {
    $result = $api_instance->deleteBoat($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatApi->deleteBoat: ', $e->getMessage(), PHP_EOL;
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

# **editBoat**
> \Swagger\Client\Model\InlineResponse2004 editBoat($name, $capacity, $description, $boatrooms)

Update a boat by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatApi();
$name = "name_example"; // string | 
$capacity = 789; // int | 
$description = "description_example"; // string | 
$boatrooms = array(56); // int[] | 

try {
    $result = $api_instance->editBoat($name, $capacity, $description, $boatrooms);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatApi->editBoat: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |
 **capacity** | **int**|  |
 **description** | **string**|  | [optional]
 **boatrooms** | [**int[]**](../Model/int.md)|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2004**](../Model/InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllBoats**
> \Swagger\Client\Model\Boat[] getAllBoats()

Retrieve all boats

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatApi();

try {
    $result = $api_instance->getAllBoats();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatApi->getAllBoats: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Boat[]**](../Model/Boat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedBoats**
> \Swagger\Client\Model\Boat[] getAllWithTrashedBoats()

Retrieve all agents including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatApi();

try {
    $result = $api_instance->getAllWithTrashedBoats();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatApi->getAllWithTrashedBoats: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Boat[]**](../Model/Boat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBoat**
> \Swagger\Client\Model\InlineResponse2005 getBoat($id)

Retrieve a boat by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatApi();
$id = 789; // int | ID of the boat to be retrieved

try {
    $result = $api_instance->getBoat($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatApi->getBoat: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the boat to be retrieved |

### Return type

[**\Swagger\Client\Model\InlineResponse2005**](../Model/InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

