# Swagger\Client\CustomerApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](CustomerApi.md#createCustomer) | **POST** /customer/add | Create a new customer
[**deleteCustomer**](CustomerApi.md#deleteCustomer) | **DELETE** /customer/delete | Delete a customer by ID
[**editCustomer**](CustomerApi.md#editCustomer) | **POST** /customer/edit | Update a customer by ID
[**getAllCustomers**](CustomerApi.md#getAllCustomers) | **GET** /customer/all | Retrieve all customers
[**getCustomer**](CustomerApi.md#getCustomer) | **GET** /customer | Retrieve a customer by ID


# **createCustomer**
> \Swagger\Client\Model\InlineResponse20029 createCustomer($email, $firstname, $lastname, $birthday, $gender, $address_1, $address_2, $city, $county, $postcode, $country_id, $phone, $last_dive, $number_of_dives, $chest_size, $show_size, $height, $certificates)

Create a new customer

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CustomerApi();
$email = "email_example"; // string | 
$firstname = "firstname_example"; // string | 
$lastname = "lastname_example"; // string | 
$birthday = new \DateTime(); // \DateTime | 
$gender = 56; // int | 
$address_1 = "address_1_example"; // string | 
$address_2 = "address_2_example"; // string | 
$city = "city_example"; // string | 
$county = "county_example"; // string | 
$postcode = "postcode_example"; // string | 
$country_id = 789; // int | 
$phone = "phone_example"; // string | 
$last_dive = new \DateTime(); // \DateTime | 
$number_of_dives = 56; // int | 
$chest_size = "chest_size_example"; // string | 
$show_size = "show_size_example"; // string | 
$height = "height_example"; // string | 
$certificates = array(56); // int[] | 

try {
    $result = $api_instance->createCustomer($email, $firstname, $lastname, $birthday, $gender, $address_1, $address_2, $city, $county, $postcode, $country_id, $phone, $last_dive, $number_of_dives, $chest_size, $show_size, $height, $certificates);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CustomerApi->createCustomer: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **string**|  |
 **firstname** | **string**|  |
 **lastname** | **string**|  |
 **birthday** | **\DateTime**|  | [optional]
 **gender** | **int**|  | [optional]
 **address_1** | **string**|  | [optional]
 **address_2** | **string**|  | [optional]
 **city** | **string**|  | [optional]
 **county** | **string**|  | [optional]
 **postcode** | **string**|  | [optional]
 **country_id** | **int**|  | [optional]
 **phone** | **string**|  | [optional]
 **last_dive** | **\DateTime**|  | [optional]
 **number_of_dives** | **int**|  | [optional]
 **chest_size** | **string**|  | [optional]
 **show_size** | **string**|  | [optional]
 **height** | **string**|  | [optional]
 **certificates** | [**int[]**](../Model/int.md)|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20029**](../Model/InlineResponse20029.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteCustomer**
> \Swagger\Client\Model\InlineResponse2003 deleteCustomer($id)

Delete a customer by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CustomerApi();
$id = 789; // int | 

try {
    $result = $api_instance->deleteCustomer($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CustomerApi->deleteCustomer: ', $e->getMessage(), PHP_EOL;
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

# **editCustomer**
> \Swagger\Client\Model\InlineResponse20030 editCustomer($id, $email, $firstname, $lastname, $birthday, $gender, $address_1, $address_2, $city, $county, $postcode, $country_id, $phone, $last_dive, $number_of_dives, $chest_size, $show_size, $height, $certificates)

Update a customer by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CustomerApi();
$id = 789; // int | 
$email = "email_example"; // string | 
$firstname = "firstname_example"; // string | 
$lastname = "lastname_example"; // string | 
$birthday = new \DateTime(); // \DateTime | 
$gender = 56; // int | 
$address_1 = "address_1_example"; // string | 
$address_2 = "address_2_example"; // string | 
$city = "city_example"; // string | 
$county = "county_example"; // string | 
$postcode = "postcode_example"; // string | 
$country_id = 789; // int | 
$phone = "phone_example"; // string | 
$last_dive = new \DateTime(); // \DateTime | 
$number_of_dives = 56; // int | 
$chest_size = "chest_size_example"; // string | 
$show_size = "show_size_example"; // string | 
$height = "height_example"; // string | 
$certificates = array(56); // int[] | 

try {
    $result = $api_instance->editCustomer($id, $email, $firstname, $lastname, $birthday, $gender, $address_1, $address_2, $city, $county, $postcode, $country_id, $phone, $last_dive, $number_of_dives, $chest_size, $show_size, $height, $certificates);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CustomerApi->editCustomer: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **email** | **string**|  | [optional]
 **firstname** | **string**|  | [optional]
 **lastname** | **string**|  | [optional]
 **birthday** | **\DateTime**|  | [optional]
 **gender** | **int**|  | [optional]
 **address_1** | **string**|  | [optional]
 **address_2** | **string**|  | [optional]
 **city** | **string**|  | [optional]
 **county** | **string**|  | [optional]
 **postcode** | **string**|  | [optional]
 **country_id** | **int**|  | [optional]
 **phone** | **string**|  | [optional]
 **last_dive** | **\DateTime**|  | [optional]
 **number_of_dives** | **int**|  | [optional]
 **chest_size** | **string**|  | [optional]
 **show_size** | **string**|  | [optional]
 **height** | **string**|  | [optional]
 **certificates** | [**int[]**](../Model/int.md)|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20030**](../Model/InlineResponse20030.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllCustomers**
> \Swagger\Client\Model\Customer[] getAllCustomers()

Retrieve all customers

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CustomerApi();

try {
    $result = $api_instance->getAllCustomers();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CustomerApi->getAllCustomers: ', $e->getMessage(), PHP_EOL;
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

# **getCustomer**
> \Swagger\Client\Model\InlineResponse20029 getCustomer($id)

Retrieve a customer by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CustomerApi();
$id = 789; // int | 

try {
    $result = $api_instance->getCustomer($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CustomerApi->getCustomer: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20029**](../Model/InlineResponse20029.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

