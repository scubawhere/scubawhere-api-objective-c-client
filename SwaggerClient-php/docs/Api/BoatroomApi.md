# Swagger\Client\BoatroomApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBoatroom**](BoatroomApi.md#createBoatroom) | **POST** /boatroom/add | Create a new boatroom
[**deleteBoatroom**](BoatroomApi.md#deleteBoatroom) | **DELETE** /boatroom/delete | Delete a boatroom by ID
[**editBoatroom**](BoatroomApi.md#editBoatroom) | **POST** /boatroom/edit | Update a boatroom by ID
[**getAllBoatrooms**](BoatroomApi.md#getAllBoatrooms) | **GET** /boatroom/all | Retrieve all boatrooms
[**getAllWithTrashedBoatrooms**](BoatroomApi.md#getAllWithTrashedBoatrooms) | **GET** /boatroom/all-with-trashed | Retrieve all boatrooms including any deleted models
[**getBoatroom**](BoatroomApi.md#getBoatroom) | **GET** /boatroom | Retrieve a boatroom by ID


# **createBoatroom**
> \Swagger\Client\Model\InlineResponse2006 createBoatroom($name, $description)

Create a new boatroom

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatroomApi();
$name = "name_example"; // string | 
$description = "description_example"; // string | 

try {
    $result = $api_instance->createBoatroom($name, $description);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatroomApi->createBoatroom: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |
 **description** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2006**](../Model/InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteBoatroom**
> \Swagger\Client\Model\InlineResponse2003 deleteBoatroom($id)

Delete a boatroom by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatroomApi();
$id = 789; // int | 

try {
    $result = $api_instance->deleteBoatroom($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatroomApi->deleteBoatroom: ', $e->getMessage(), PHP_EOL;
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

# **editBoatroom**
> \Swagger\Client\Model\InlineResponse2006 editBoatroom($id, $name, $description)

Update a boatroom by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatroomApi();
$id = 789; // int | 
$name = "name_example"; // string | 
$description = "description_example"; // string | 

try {
    $result = $api_instance->editBoatroom($id, $name, $description);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatroomApi->editBoatroom: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **name** | **string**|  |
 **description** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2006**](../Model/InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllBoatrooms**
> \Swagger\Client\Model\Boatroom[] getAllBoatrooms()

Retrieve all boatrooms

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatroomApi();

try {
    $result = $api_instance->getAllBoatrooms();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatroomApi->getAllBoatrooms: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Boatroom[]**](../Model/Boatroom.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedBoatrooms**
> \Swagger\Client\Model\Boatroom[] getAllWithTrashedBoatrooms()

Retrieve all boatrooms including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatroomApi();

try {
    $result = $api_instance->getAllWithTrashedBoatrooms();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatroomApi->getAllWithTrashedBoatrooms: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Boatroom[]**](../Model/Boatroom.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBoatroom**
> \Swagger\Client\Model\InlineResponse2006 getBoatroom($id)

Retrieve a boatroom by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BoatroomApi();
$id = 789; // int | 

try {
    $result = $api_instance->getBoatroom($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BoatroomApi->getBoatroom: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2006**](../Model/InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

