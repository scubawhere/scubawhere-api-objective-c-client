# Swagger\Client\CustomersApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllWithTrashedCustomers**](CustomersApi.md#getAllWithTrashedCustomers) | **GET** /customer/all-with-trashed | Retrieve all customer including any deleted models


# **getAllWithTrashedCustomers**
> \Swagger\Client\Model\Customer[] getAllWithTrashedCustomers()

Retrieve all customer including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CustomersApi();

try {
    $result = $api_instance->getAllWithTrashedCustomers();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CustomersApi->getAllWithTrashedCustomers: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Customer[]**](../Model/Customer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

