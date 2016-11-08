# Swagger\Client\PackageApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPackage**](PackageApi.md#createPackage) | **POST** /package/add | Create a new package
[**deletePackage**](PackageApi.md#deletePackage) | **DELETE** /package/delete | Delete a package by ID
[**editPackage**](PackageApi.md#editPackage) | **POST** /package/edit | Update a package by ID
[**getAllPackages**](PackageApi.md#getAllPackages) | **GET** /package/all | Retrieve all packages including any deleted models
[**getAllWithTrashedPackages**](PackageApi.md#getAllWithTrashedPackages) | **GET** /package/all-with-trashed | Retrieve all packages including any deleted models
[**getPackage**](PackageApi.md#getPackage) | **GET** /package | Retrieve a package by ID


# **createPackage**
> \Swagger\Client\Model\InlineResponse20032 createPackage($name, $description, $available_from, $available_until, $tickets, $courses, $accommodations, $addons, $prices)

Create a new package

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\PackageApi();
$name = "name_example"; // string | 
$description = "description_example"; // string | 
$available_from = new \DateTime(); // \DateTime | 
$available_until = new \DateTime(); // \DateTime | 
$tickets = array(56); // int[] | 
$courses = array(56); // int[] | 
$accommodations = array(56); // int[] | 
$addons = array(56); // int[] | 
$prices = array(56); // int[] | 

try {
    $result = $api_instance->createPackage($name, $description, $available_from, $available_until, $tickets, $courses, $accommodations, $addons, $prices);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PackageApi->createPackage: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |
 **description** | **string**|  | [optional]
 **available_from** | **\DateTime**|  | [optional]
 **available_until** | **\DateTime**|  | [optional]
 **tickets** | [**int[]**](../Model/int.md)|  | [optional]
 **courses** | [**int[]**](../Model/int.md)|  | [optional]
 **accommodations** | [**int[]**](../Model/int.md)|  | [optional]
 **addons** | [**int[]**](../Model/int.md)|  | [optional]
 **prices** | [**int[]**](../Model/int.md)|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20032**](../Model/InlineResponse20032.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deletePackage**
> \Swagger\Client\Model\InlineResponse2003 deletePackage($id)

Delete a package by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\PackageApi();
$id = 789; // int | 

try {
    $result = $api_instance->deletePackage($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PackageApi->deletePackage: ', $e->getMessage(), PHP_EOL;
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

# **editPackage**
> \Swagger\Client\Model\InlineResponse20033 editPackage($id, $name, $description, $available_from, $available_until, $tickets, $courses, $accommodations, $addons, $prices)

Update a package by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\PackageApi();
$id = 789; // int | 
$name = "name_example"; // string | 
$description = "description_example"; // string | 
$available_from = new \DateTime(); // \DateTime | 
$available_until = new \DateTime(); // \DateTime | 
$tickets = array(56); // int[] | 
$courses = array(56); // int[] | 
$accommodations = array(56); // int[] | 
$addons = array(56); // int[] | 
$prices = array(56); // int[] | 

try {
    $result = $api_instance->editPackage($id, $name, $description, $available_from, $available_until, $tickets, $courses, $accommodations, $addons, $prices);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PackageApi->editPackage: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **name** | **string**|  |
 **description** | **string**|  | [optional]
 **available_from** | **\DateTime**|  | [optional]
 **available_until** | **\DateTime**|  | [optional]
 **tickets** | [**int[]**](../Model/int.md)|  | [optional]
 **courses** | [**int[]**](../Model/int.md)|  | [optional]
 **accommodations** | [**int[]**](../Model/int.md)|  | [optional]
 **addons** | [**int[]**](../Model/int.md)|  | [optional]
 **prices** | [**int[]**](../Model/int.md)|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20033**](../Model/InlineResponse20033.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllPackages**
> \Swagger\Client\Model\Package[] getAllPackages()

Retrieve all packages including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\PackageApi();

try {
    $result = $api_instance->getAllPackages();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PackageApi->getAllPackages: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Package[]**](../Model/Package.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedPackages**
> \Swagger\Client\Model\Package[] getAllWithTrashedPackages()

Retrieve all packages including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\PackageApi();

try {
    $result = $api_instance->getAllWithTrashedPackages();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PackageApi->getAllWithTrashedPackages: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Package[]**](../Model/Package.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPackage**
> \Swagger\Client\Model\InlineResponse20032 getPackage($id)

Retrieve a package by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\PackageApi();
$id = 789; // int | 

try {
    $result = $api_instance->getPackage($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PackageApi->getPackage: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20032**](../Model/InlineResponse20032.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

