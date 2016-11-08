# Swagger\Client\AddonApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAddon**](AddonApi.md#addAddon) | **POST** /addon/add | Create a new addon
[**deleteAddon**](AddonApi.md#deleteAddon) | **DELETE** /addon/delete | Delete an addon by ID
[**getAddon**](AddonApi.md#getAddon) | **GET** /addon | Retrieve an addon by ID
[**getAllAddons**](AddonApi.md#getAllAddons) | **GET** /addon/all | Retrieve all addons
[**getAllWithTrashedAddons**](AddonApi.md#getAllWithTrashedAddons) | **GET** /addon/all-with-trashed | Retrieve all addons including any deleted models
[**updateAddon**](AddonApi.md#updateAddon) | **PUT** /addon/edit | Update an Addon


# **addAddon**
> \Swagger\Client\Model\InlineResponse2002 addAddon($name, $base_prices, $description)

Create a new addon

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AddonApi();
$name = "name_example"; // string | Name of the type of addon
$base_prices = 789; // int | Prices for addon
$description = "description_example"; // string | Description of the addon

try {
    $result = $api_instance->addAddon($name, $base_prices, $description);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AddonApi->addAddon: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the type of addon |
 **base_prices** | **int**| Prices for addon |
 **description** | **string**| Description of the addon | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2002**](../Model/InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteAddon**
> \Swagger\Client\Model\InlineResponse2003 deleteAddon($body)

Delete an addon by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AddonApi();
$body = 789; // int | ID of the Addon

try {
    $result = $api_instance->deleteAddon($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AddonApi->deleteAddon: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **int**| ID of the Addon | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAddon**
> \Swagger\Client\Model\InlineResponse2001 getAddon($id)

Retrieve an addon by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AddonApi();
$id = 789; // int | ID of the addon to be retrieved

try {
    $result = $api_instance->getAddon($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AddonApi->getAddon: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the addon to be retrieved |

### Return type

[**\Swagger\Client\Model\InlineResponse2001**](../Model/InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllAddons**
> \Swagger\Client\Model\Addon[] getAllAddons()

Retrieve all addons

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AddonApi();

try {
    $result = $api_instance->getAllAddons();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AddonApi->getAllAddons: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Addon[]**](../Model/Addon.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedAddons**
> \Swagger\Client\Model\Addon[] getAllWithTrashedAddons()

Retrieve all addons including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AddonApi();

try {
    $result = $api_instance->getAllWithTrashedAddons();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AddonApi->getAllWithTrashedAddons: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Addon[]**](../Model/Addon.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateAddon**
> \Swagger\Client\Model\InlineResponse2002 updateAddon($id, $name, $description)

Update an Addon

Updates the addon by id using the specified fields

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AddonApi();
$id = 789; // int | ID of the Addon to be updated
$name = "name_example"; // string | Name of the Addon
$description = "description_example"; // string | Description of the Addon

try {
    $result = $api_instance->updateAddon($id, $name, $description);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AddonApi->updateAddon: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the Addon to be updated |
 **name** | **string**| Name of the Addon | [optional]
 **description** | **string**| Description of the Addon | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2002**](../Model/InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

