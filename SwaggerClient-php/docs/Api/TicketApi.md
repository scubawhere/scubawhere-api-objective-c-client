# Swagger\Client\TicketApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTicket**](TicketApi.md#addTicket) | **POST** /ticket/add | Create a new ticket
[**deleteTicket**](TicketApi.md#deleteTicket) | **DELETE** /ticket/delete | Delete a ticket
[**editTicket**](TicketApi.md#editTicket) | **PUT** /ticket/edit | Update an existing ticket
[**getAllAvailableTickets**](TicketApi.md#getAllAvailableTickets) | **GET** /ticket/only-available | Retrieve all tickets that are available to booked today
[**getAllTickets**](TicketApi.md#getAllTickets) | **GET** /ticket/all | Retrieve all tickets
[**getAllWithTrashedTickets**](TicketApi.md#getAllWithTrashedTickets) | **GET** /ticket/all-with-trashed | Retrieve all tickets
[**getTicket**](TicketApi.md#getTicket) | **GET** /ticket | Retrieve a ticket by ID


# **addTicket**
> \Swagger\Client\Model\InlineResponse2014 addTicket($name, $trips, $prices, $description, $available_from, $available_until, $only_packaged, $boats, $boatrooms)

Create a new ticket

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TicketApi();
$name = "name_example"; // string | 
$trips = array(56); // int[] | 
$prices = new \Swagger\Client\Model\BasePrice(); // \Swagger\Client\Model\BasePrice | 
$description = "description_example"; // string | 
$available_from = new \DateTime(); // \DateTime | 
$available_until = new \DateTime(); // \DateTime | 
$only_packaged = true; // bool | 
$boats = array(56); // int[] | 
$boatrooms = array(56); // int[] | 

try {
    $result = $api_instance->addTicket($name, $trips, $prices, $description, $available_from, $available_until, $only_packaged, $boats, $boatrooms);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TicketApi->addTicket: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |
 **trips** | [**int[]**](../Model/int.md)|  |
 **prices** | [**\Swagger\Client\Model\BasePrice**](../Model/\Swagger\Client\Model\BasePrice.md)|  |
 **description** | **string**|  | [optional]
 **available_from** | **\DateTime**|  | [optional]
 **available_until** | **\DateTime**|  | [optional]
 **only_packaged** | **bool**|  | [optional]
 **boats** | [**int[]**](../Model/int.md)|  | [optional]
 **boatrooms** | [**int[]**](../Model/int.md)|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2014**](../Model/InlineResponse2014.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteTicket**
> \Swagger\Client\Model\InlineResponse2014 deleteTicket($name)

Delete a ticket

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TicketApi();
$name = "name_example"; // string | 

try {
    $result = $api_instance->deleteTicket($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TicketApi->deleteTicket: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2014**](../Model/InlineResponse2014.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **editTicket**
> \Swagger\Client\Model\InlineResponse2014 editTicket($id, $name, $trips, $prices, $description, $available_from, $available_until, $only_packaged, $boats, $boatrooms)

Update an existing ticket

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TicketApi();
$id = 789; // int | 
$name = "name_example"; // string | 
$trips = array(56); // int[] | 
$prices = new \Swagger\Client\Model\BasePrice(); // \Swagger\Client\Model\BasePrice | 
$description = "description_example"; // string | 
$available_from = new \DateTime(); // \DateTime | 
$available_until = new \DateTime(); // \DateTime | 
$only_packaged = true; // bool | 
$boats = array(56); // int[] | 
$boatrooms = array(56); // int[] | 

try {
    $result = $api_instance->editTicket($id, $name, $trips, $prices, $description, $available_from, $available_until, $only_packaged, $boats, $boatrooms);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TicketApi->editTicket: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **name** | **string**|  |
 **trips** | [**int[]**](../Model/int.md)|  |
 **prices** | [**\Swagger\Client\Model\BasePrice**](../Model/\Swagger\Client\Model\BasePrice.md)|  |
 **description** | **string**|  | [optional]
 **available_from** | **\DateTime**|  | [optional]
 **available_until** | **\DateTime**|  | [optional]
 **only_packaged** | **bool**|  | [optional]
 **boats** | [**int[]**](../Model/int.md)|  | [optional]
 **boatrooms** | [**int[]**](../Model/int.md)|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2014**](../Model/InlineResponse2014.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllAvailableTickets**
> \Swagger\Client\Model\Ticket[] getAllAvailableTickets()

Retrieve all tickets that are available to booked today

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TicketApi();

try {
    $result = $api_instance->getAllAvailableTickets();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TicketApi->getAllAvailableTickets: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Ticket[]**](../Model/Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllTickets**
> \Swagger\Client\Model\Ticket[] getAllTickets()

Retrieve all tickets

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TicketApi();

try {
    $result = $api_instance->getAllTickets();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TicketApi->getAllTickets: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Ticket[]**](../Model/Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedTickets**
> \Swagger\Client\Model\Ticket[] getAllWithTrashedTickets()

Retrieve all tickets

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TicketApi();

try {
    $result = $api_instance->getAllWithTrashedTickets();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TicketApi->getAllWithTrashedTickets: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Ticket[]**](../Model/Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTicket**
> \Swagger\Client\Model\Ticket getTicket($id)

Retrieve a ticket by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TicketApi();
$id = 789; // int | 

try {
    $result = $api_instance->getTicket($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TicketApi->getTicket: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\Ticket**](../Model/Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

