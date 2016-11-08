# Swagger\Client\RefundApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addRefund**](RefundApi.md#addRefund) | **POST** /refund/add | Create a new refund
[**filterRefunds**](RefundApi.md#filterRefunds) | **GET** /refund/filter | Retrieve all refunds that match a filter
[**getAllRefunds**](RefundApi.md#getAllRefunds) | **GET** /refund/all | Retrieve all refunds made
[**getRefund**](RefundApi.md#getRefund) | **GET** /refund | Retrieve a refund by ID


# **addRefund**
> \Swagger\Client\Model\InlineResponse2012 addRefund($booking_id, $paymentgateway_id, $amount)

Create a new refund

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\RefundApi();
$booking_id = 789; // int | 
$paymentgateway_id = 789; // int | 
$amount = 3.4; // float | 

try {
    $result = $api_instance->addRefund($booking_id, $paymentgateway_id, $amount);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RefundApi->addRefund: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |
 **paymentgateway_id** | **int**|  |
 **amount** | **float**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2012**](../Model/InlineResponse2012.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **filterRefunds**
> \Swagger\Client\Model\InlineResponse20039 filterRefunds($after, $before)

Retrieve all refunds that match a filter

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\RefundApi();
$after = new \DateTime(); // \DateTime | Date of the earliest payment
$before = new \DateTime(); // \DateTime | Date of the latest payment to be retrieved

try {
    $result = $api_instance->filterRefunds($after, $before);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RefundApi->filterRefunds: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **\DateTime**| Date of the earliest payment | [optional]
 **before** | **\DateTime**| Date of the latest payment to be retrieved | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20039**](../Model/InlineResponse20039.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllRefunds**
> \Swagger\Client\Model\InlineResponse20038 getAllRefunds()

Retrieve all refunds made

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\RefundApi();

try {
    $result = $api_instance->getAllRefunds();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RefundApi->getAllRefunds: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\InlineResponse20038**](../Model/InlineResponse20038.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getRefund**
> \Swagger\Client\Model\InlineResponse20037 getRefund($id)

Retrieve a refund by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\RefundApi();
$id = 789; // int | 

try {
    $result = $api_instance->getRefund($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RefundApi->getRefund: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20037**](../Model/InlineResponse20037.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

