# Swagger\Client\ReportApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRevenueStreamReport**](ReportApi.md#getRevenueStreamReport) | **GET** /report/revenue-streams | Get a report containing the distribution of revenue made from all the tickets, packages, courses, addons, accommodations
[**getSourcesReport**](ReportApi.md#getSourcesReport) | **GET** /report/sources | Get a report about the distribution of revenue between the diffrent source of bookings
[**getTrainingUtilisationReport**](ReportApi.md#getTrainingUtilisationReport) | **GET** /report/training-utilisation | Get a report containing the utilisation of all classes between the specified dates
[**getUtilisationReport**](ReportApi.md#getUtilisationReport) | **GET** /report/utilisation | Get a report containing the utilisation of all trips between the specified dates


# **getRevenueStreamReport**
> \Swagger\Client\Model\InlineResponse20040 getRevenueStreamReport($after, $before)

Get a report containing the distribution of revenue made from all the tickets, packages, courses, addons, accommodations

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ReportApi();
$after = new \DateTime(); // \DateTime | 
$before = new \DateTime(); // \DateTime | 

try {
    $result = $api_instance->getRevenueStreamReport($after, $before);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReportApi->getRevenueStreamReport: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **\DateTime**|  |
 **before** | **\DateTime**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20040**](../Model/InlineResponse20040.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSourcesReport**
> \Swagger\Client\Model\InlineResponse20041 getSourcesReport($after, $before)

Get a report about the distribution of revenue between the diffrent source of bookings

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ReportApi();
$after = new \DateTime(); // \DateTime | 
$before = new \DateTime(); // \DateTime | 

try {
    $result = $api_instance->getSourcesReport($after, $before);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReportApi->getSourcesReport: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **\DateTime**|  |
 **before** | **\DateTime**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20041**](../Model/InlineResponse20041.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTrainingUtilisationReport**
> \Swagger\Client\Model\InlineResponse20042 getTrainingUtilisationReport($after, $before)

Get a report containing the utilisation of all classes between the specified dates

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ReportApi();
$after = new \DateTime(); // \DateTime | 
$before = new \DateTime(); // \DateTime | 

try {
    $result = $api_instance->getTrainingUtilisationReport($after, $before);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReportApi->getTrainingUtilisationReport: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **\DateTime**|  |
 **before** | **\DateTime**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20042**](../Model/InlineResponse20042.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUtilisationReport**
> \Swagger\Client\Model\InlineResponse20042 getUtilisationReport($after, $before)

Get a report containing the utilisation of all trips between the specified dates

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ReportApi();
$after = new \DateTime(); // \DateTime | 
$before = new \DateTime(); // \DateTime | 

try {
    $result = $api_instance->getUtilisationReport($after, $before);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReportApi->getUtilisationReport: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **\DateTime**|  |
 **before** | **\DateTime**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20042**](../Model/InlineResponse20042.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

