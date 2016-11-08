# Swagger\Client\ClassApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**classGet**](ClassApi.md#classGet) | **GET** /class | Retrieve a class by ID
[**createClass**](ClassApi.md#createClass) | **POST** /class/add | Create a new class
[**deleteClass**](ClassApi.md#deleteClass) | **DELETE** /class/delete | Delete a class by ID
[**editClass**](ClassApi.md#editClass) | **POST** /class/edit | Update a class by ID
[**getAllClass**](ClassApi.md#getAllClass) | **GET** /class/all | Retrieve all classes including any deleted models
[**getAllWithTrashedClass**](ClassApi.md#getAllWithTrashedClass) | **GET** /class/all-with-trashed | Retrieve all classes including any deleted models


# **classGet**
> \Swagger\Client\Model\Training classGet($id)

Retrieve a class by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClassApi();
$id = 789; // int | 

try {
    $result = $api_instance->classGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClassApi->classGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\Training**](../Model/Training.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **createClass**
> \Swagger\Client\Model\InlineResponse20021 createClass($name, $duration, $description)

Create a new class

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClassApi();
$name = "name_example"; // string | 
$duration = 3.4; // float | 
$description = "description_example"; // string | 

try {
    $result = $api_instance->createClass($name, $duration, $description);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClassApi->createClass: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |
 **duration** | **float**|  |
 **description** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20021**](../Model/InlineResponse20021.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteClass**
> \Swagger\Client\Model\InlineResponse2003 deleteClass($id)

Delete a class by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClassApi();
$id = 789; // int | 

try {
    $result = $api_instance->deleteClass($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClassApi->deleteClass: ', $e->getMessage(), PHP_EOL;
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

# **editClass**
> \Swagger\Client\Model\InlineResponse20022 editClass($id, $name, $duration, $description)

Update a class by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClassApi();
$id = 56; // int | 
$name = "name_example"; // string | 
$duration = 3.4; // float | 
$description = "description_example"; // string | 

try {
    $result = $api_instance->editClass($id, $name, $duration, $description);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClassApi->editClass: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **name** | **string**|  |
 **duration** | **float**|  |
 **description** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20022**](../Model/InlineResponse20022.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllClass**
> \Swagger\Client\Model\Training[] getAllClass()

Retrieve all classes including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClassApi();

try {
    $result = $api_instance->getAllClass();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClassApi->getAllClass: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Training[]**](../Model/Training.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedClass**
> \Swagger\Client\Model\Training[] getAllWithTrashedClass()

Retrieve all classes including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClassApi();

try {
    $result = $api_instance->getAllWithTrashedClass();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClassApi->getAllWithTrashedClass: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Training[]**](../Model/Training.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

