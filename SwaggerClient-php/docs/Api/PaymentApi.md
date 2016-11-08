# Swagger\Client\PaymentApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPayment**](PaymentApi.md#addPayment) | **POST** /payment/add | Create a new payment
[**filterPayments**](PaymentApi.md#filterPayments) | **GET** /payment/filter | Retrieve all payments that match a filter
[**getAllPayments**](PaymentApi.md#getAllPayments) | **GET** /payment/all | Retrieve all payments made
[**getPayment**](PaymentApi.md#getPayment) | **GET** /payment | Retrieve a payment by ID
[**getPaymentGateways**](PaymentApi.md#getPaymentGateways) | **GET** /payment/paymentgateways | Retrieve all the payment gateways


# **addPayment**
> \Swagger\Client\Model\InlineResponse2011 addPayment($booking_id, $paymentgateway_id, $amount)

Create a new payment

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\PaymentApi();
$booking_id = 789; // int | 
$paymentgateway_id = 789; // int | 
$amount = 3.4; // float | 

try {
    $result = $api_instance->addPayment($booking_id, $paymentgateway_id, $amount);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentApi->addPayment: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\InlineResponse2011**](../Model/InlineResponse2011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **filterPayments**
> \Swagger\Client\Model\InlineResponse20035 filterPayments($after, $before)

Retrieve all payments that match a filter

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\PaymentApi();
$after = new \DateTime(); // \DateTime | Date of the earliest payment
$before = new \DateTime(); // \DateTime | Date of the latest payment to be retrieved

try {
    $result = $api_instance->filterPayments($after, $before);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentApi->filterPayments: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **\DateTime**| Date of the earliest payment | [optional]
 **before** | **\DateTime**| Date of the latest payment to be retrieved | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20035**](../Model/InlineResponse20035.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllPayments**
> \Swagger\Client\Model\Payment[] getAllPayments()

Retrieve all payments made

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\PaymentApi();

try {
    $result = $api_instance->getAllPayments();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentApi->getAllPayments: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Payment[]**](../Model/Payment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPayment**
> \Swagger\Client\Model\InlineResponse20034 getPayment($id)

Retrieve a payment by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\PaymentApi();
$id = 789; // int | 

try {
    $result = $api_instance->getPayment($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentApi->getPayment: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20034**](../Model/InlineResponse20034.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPaymentGateways**
> \Swagger\Client\Model\InlineResponse20036 getPaymentGateways()

Retrieve all the payment gateways

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\PaymentApi();

try {
    $result = $api_instance->getPaymentGateways();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentApi->getPaymentGateways: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\InlineResponse20036**](../Model/InlineResponse20036.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

