# Swagger\Client\BookingApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBookingDetail**](BookingApi.md#addBookingDetail) | **POST** /booking/add-detail | Add a package / course / ticket with its session to the booking
[**attachAccommodation**](BookingApi.md#attachAccommodation) | **POST** /booking/add-accommodation | Attach an accommodation booking to a booking
[**attachAddon**](BookingApi.md#attachAddon) | **POST** /booking/add-addon | Attach an addon to a trip of a booking
[**attachPickup**](BookingApi.md#attachPickup) | **POST** /booking/add-pickup | Attach a pickup location for a booking
[**cancelBooking**](BookingApi.md#cancelBooking) | **POST** /booking/cancel | Cancel a booking
[**confirmBooking**](BookingApi.md#confirmBooking) | **POST** /booking/confirm | Confirm a booking and all of its sessions and notify the lead customer
[**deleteBooking**](BookingApi.md#deleteBooking) | **DELETE** /booking/delete | Delete a booking by ID
[**dettachAccommodation**](BookingApi.md#dettachAccommodation) | **POST** /booking/remove-accommodation | Dettach an accommodation booking to a booking
[**dettachAddon**](BookingApi.md#dettachAddon) | **POST** /booking/remove-addon | Dettach an addon to a trip of a booking
[**dettachPickup**](BookingApi.md#dettachPickup) | **POST** /booking/remove-pickup | Dettach a pickup location for a booking
[**editBookingInfo**](BookingApi.md#editBookingInfo) | **POST** /booking/edit-info | Edit the information related to a booking
[**filterBookings**](BookingApi.md#filterBookings) | **GET** /booking/filter | Get all bookings matching a filter
[**getAllBookings**](BookingApi.md#getAllBookings) | **GET** /booking/all | Retrieve all bookings
[**getAllWithTrashedBookings**](BookingApi.md#getAllWithTrashedBookings) | **GET** /booking/all-with-trashed | Retrieve all bookings including any deleted models
[**getBooking**](BookingApi.md#getBooking) | **GET** /booking | Retrieve a booking by ID
[**getCustomerBookings**](BookingApi.md#getCustomerBookings) | **GET** /booking/customer | Get all bookings for a customer
[**getPayments**](BookingApi.md#getPayments) | **GET** /booking/payments | Retrieve all payments made for a booking
[**getRefunds**](BookingApi.md#getRefunds) | **GET** /booking/refunds | Retrieve all refunds for a booking
[**getTodaysBookings**](BookingApi.md#getTodaysBookings) | **GET** /booking/today | Get all bookings made today
[**getTommorowsBookings**](BookingApi.md#getTommorowsBookings) | **GET** /booking/tommorow | Get all bookings made today
[**initBooking**](BookingApi.md#initBooking) | **POST** /booking/init | Create a new empty booking
[**removeBookingDetail**](BookingApi.md#removeBookingDetail) | **POST** /booking/remove-detail | Remove a detail from a booking
[**resendConfirmation**](BookingApi.md#resendConfirmation) | **POST** /booking/resend-confirmation | Resend the confirmation email to the lead customer
[**reserveBooking**](BookingApi.md#reserveBooking) | **POST** /booking/reserve | Reserve a booking and its sessions capcity until a set date
[**saveBooking**](BookingApi.md#saveBooking) | **POST** /booking/save | Save a booking as a quote and release all capacity of sessions
[**setLeadCustomer**](BookingApi.md#setLeadCustomer) | **POST** /booking/set-lead | Set the lead customer for a booking


# **addBookingDetail**
> \Swagger\Client\Model\InlineResponse20010 addBookingDetail($booking_id, $customer_id, $ticket_id, $session_id, $boatroom_id, $training_session_id, $temporary, $package_id, $packagefacade_id, $course_id)

Add a package / course / ticket with its session to the booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 
$customer_id = 789; // int | 
$ticket_id = 789; // int | 
$session_id = 789; // int | 
$boatroom_id = 789; // int | 
$training_session_id = 789; // int | 
$temporary = true; // bool | 
$package_id = 789; // int | 
$packagefacade_id = 789; // int | 
$course_id = 789; // int | 

try {
    $result = $api_instance->addBookingDetail($booking_id, $customer_id, $ticket_id, $session_id, $boatroom_id, $training_session_id, $temporary, $package_id, $packagefacade_id, $course_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->addBookingDetail: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |
 **customer_id** | **int**|  |
 **ticket_id** | **int**|  | [optional]
 **session_id** | **int**|  | [optional]
 **boatroom_id** | **int**|  | [optional]
 **training_session_id** | **int**|  | [optional]
 **temporary** | **bool**|  | [optional]
 **package_id** | **int**|  | [optional]
 **packagefacade_id** | **int**|  | [optional]
 **course_id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20010**](../Model/InlineResponse20010.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **attachAccommodation**
> \Swagger\Client\Model\InlineResponse2008 attachAccommodation($booking_id, $accommodation_id, $customer_id, $start, $end)

Attach an accommodation booking to a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 
$accommodation_id = 789; // int | 
$customer_id = 789; // int | 
$start = new \DateTime(); // \DateTime | 
$end = new \DateTime(); // \DateTime | 

try {
    $result = $api_instance->attachAccommodation($booking_id, $accommodation_id, $customer_id, $start, $end);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->attachAccommodation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |
 **accommodation_id** | **int**|  |
 **customer_id** | **int**|  |
 **start** | **\DateTime**|  | [optional]
 **end** | **\DateTime**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2008**](../Model/InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **attachAddon**
> \Swagger\Client\Model\InlineResponse2009 attachAddon($booking_id, $bookingdetail_id, $addon_id, $quantity, $packagefacade_id)

Attach an addon to a trip of a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 
$bookingdetail_id = 789; // int | 
$addon_id = 789; // int | 
$quantity = 789; // int | 
$packagefacade_id = 789; // int | 

try {
    $result = $api_instance->attachAddon($booking_id, $bookingdetail_id, $addon_id, $quantity, $packagefacade_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->attachAddon: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |
 **bookingdetail_id** | **int**|  |
 **addon_id** | **int**|  |
 **quantity** | **int**|  | [optional]
 **packagefacade_id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2009**](../Model/InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **attachPickup**
> \Swagger\Client\Model\InlineResponse20011 attachPickup($booking_id, $location, $date, $time)

Attach a pickup location for a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 
$location = "location_example"; // string | 
$date = new \DateTime(); // \DateTime | 
$time = "time_example"; // string | 

try {
    $result = $api_instance->attachPickup($booking_id, $location, $date, $time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->attachPickup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |
 **location** | **string**|  |
 **date** | **\DateTime**|  |
 **time** | **string**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20011**](../Model/InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **cancelBooking**
> \Swagger\Client\Model\InlineResponse2003 cancelBooking($booking_id)

Cancel a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 

try {
    $result = $api_instance->cancelBooking($booking_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->cancelBooking: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **confirmBooking**
> \Swagger\Client\Model\InlineResponse20012 confirmBooking($booking_id)

Confirm a booking and all of its sessions and notify the lead customer

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 

try {
    $result = $api_instance->confirmBooking($booking_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->confirmBooking: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20012**](../Model/InlineResponse20012.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteBooking**
> \Swagger\Client\Model\InlineResponse2003 deleteBooking($id)

Delete a booking by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$id = 789; // int | 

try {
    $result = $api_instance->deleteBooking($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->deleteBooking: ', $e->getMessage(), PHP_EOL;
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

# **dettachAccommodation**
> \Swagger\Client\Model\InlineResponse20017 dettachAccommodation($booking_id, $accommodation_id, $customer_id, $start)

Dettach an accommodation booking to a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 
$accommodation_id = 789; // int | 
$customer_id = 789; // int | 
$start = new \DateTime(); // \DateTime | 

try {
    $result = $api_instance->dettachAccommodation($booking_id, $accommodation_id, $customer_id, $start);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->dettachAccommodation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |
 **accommodation_id** | **int**|  |
 **customer_id** | **int**|  |
 **start** | **\DateTime**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20017**](../Model/InlineResponse20017.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **dettachAddon**
> \Swagger\Client\Model\InlineResponse20017 dettachAddon($booking_id, $bookingdetail_id, $addon_id, $packagefacade_id)

Dettach an addon to a trip of a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 
$bookingdetail_id = 789; // int | 
$addon_id = 789; // int | 
$packagefacade_id = 789; // int | 

try {
    $result = $api_instance->dettachAddon($booking_id, $bookingdetail_id, $addon_id, $packagefacade_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->dettachAddon: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |
 **bookingdetail_id** | **int**|  |
 **addon_id** | **int**|  |
 **packagefacade_id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20017**](../Model/InlineResponse20017.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **dettachPickup**
> \Swagger\Client\Model\InlineResponse2003 dettachPickup($booking_id, $id)

Dettach a pickup location for a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 
$id = 789; // int | 

try {
    $result = $api_instance->dettachPickup($booking_id, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->dettachPickup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |
 **id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **editBookingInfo**
> \Swagger\Client\Model\InlineResponse20014 editBookingInfo($booking_id, $discount, $comment)

Edit the information related to a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 
$discount = 1.2; // double | 
$comment = "comment_example"; // string | 

try {
    $result = $api_instance->editBookingInfo($booking_id, $discount, $comment);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->editBookingInfo: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  | [optional]
 **discount** | **double**|  | [optional]
 **comment** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20014**](../Model/InlineResponse20014.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **filterBookings**
> \Swagger\Client\Model\InlineResponse20013 filterBookings($reference, $date, $lastname)

Get all bookings matching a filter

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$reference = "reference_example"; // string | 
$date = new \DateTime(); // \DateTime | 
$lastname = "lastname_example"; // string | 

try {
    $result = $api_instance->filterBookings($reference, $date, $lastname);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->filterBookings: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference** | **string**|  | [optional]
 **date** | **\DateTime**|  | [optional]
 **lastname** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20013**](../Model/InlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllBookings**
> \Swagger\Client\Model\Booking[] getAllBookings()

Retrieve all bookings

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();

try {
    $result = $api_instance->getAllBookings();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->getAllBookings: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Booking[]**](../Model/Booking.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedBookings**
> \Swagger\Client\Model\Booking[] getAllWithTrashedBookings()

Retrieve all bookings including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();

try {
    $result = $api_instance->getAllWithTrashedBookings();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->getAllWithTrashedBookings: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Booking[]**](../Model/Booking.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBooking**
> \Swagger\Client\Model\InlineResponse2007 getBooking($id)

Retrieve a booking by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$id = 789; // int | 

try {
    $result = $api_instance->getBooking($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->getBooking: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2007**](../Model/InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getCustomerBookings**
> \Swagger\Client\Model\InlineResponse20013 getCustomerBookings($customer_id)

Get all bookings for a customer

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$customer_id = 789; // int | 

try {
    $result = $api_instance->getCustomerBookings($customer_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->getCustomerBookings: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20013**](../Model/InlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPayments**
> \Swagger\Client\Model\InlineResponse20015 getPayments($booking_id)

Retrieve all payments made for a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 

try {
    $result = $api_instance->getPayments($booking_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->getPayments: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20015**](../Model/InlineResponse20015.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getRefunds**
> \Swagger\Client\Model\InlineResponse20016 getRefunds($booking_id)

Retrieve all refunds for a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 

try {
    $result = $api_instance->getRefunds($booking_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->getRefunds: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20016**](../Model/InlineResponse20016.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTodaysBookings**
> \Swagger\Client\Model\InlineResponse20013 getTodaysBookings()

Get all bookings made today

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();

try {
    $result = $api_instance->getTodaysBookings();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->getTodaysBookings: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\InlineResponse20013**](../Model/InlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTommorowsBookings**
> \Swagger\Client\Model\InlineResponse20013 getTommorowsBookings()

Get all bookings made today

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();

try {
    $result = $api_instance->getTommorowsBookings();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->getTommorowsBookings: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\InlineResponse20013**](../Model/InlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **initBooking**
> \Swagger\Client\Model\InlineResponse201 initBooking($source, $agent_id, $agent_reference)

Create a new empty booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$source = "source_example"; // string | 
$agent_id = 789; // int | 
$agent_reference = "agent_reference_example"; // string | 

try {
    $result = $api_instance->initBooking($source, $agent_id, $agent_reference);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->initBooking: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **string**|  |
 **agent_id** | **int**|  | [optional]
 **agent_reference** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse201**](../Model/InlineResponse201.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **removeBookingDetail**
> \Swagger\Client\Model\InlineResponse20017 removeBookingDetail($booking_id, $bookingdetail_id)

Remove a detail from a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 
$bookingdetail_id = 789; // int | 

try {
    $result = $api_instance->removeBookingDetail($booking_id, $bookingdetail_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->removeBookingDetail: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |
 **bookingdetail_id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20017**](../Model/InlineResponse20017.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **resendConfirmation**
> \Swagger\Client\Model\InlineResponse2003 resendConfirmation($booking_id)

Resend the confirmation email to the lead customer

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 

try {
    $result = $api_instance->resendConfirmation($booking_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->resendConfirmation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **reserveBooking**
> \Swagger\Client\Model\InlineResponse20018 reserveBooking($booking_id, $reserved_until)

Reserve a booking and its sessions capcity until a set date

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 
$reserved_until = new \DateTime(); // \DateTime | 

try {
    $result = $api_instance->reserveBooking($booking_id, $reserved_until);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->reserveBooking: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |
 **reserved_until** | **\DateTime**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20018**](../Model/InlineResponse20018.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **saveBooking**
> \Swagger\Client\Model\InlineResponse2003 saveBooking($booking_id)

Save a booking as a quote and release all capacity of sessions

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 

try {
    $result = $api_instance->saveBooking($booking_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->saveBooking: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **setLeadCustomer**
> \Swagger\Client\Model\InlineResponse2003 setLeadCustomer($booking_id, $customer_id)

Set the lead customer for a booking

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BookingApi();
$booking_id = 789; // int | 
$customer_id = 789; // int | 

try {
    $result = $api_instance->setLeadCustomer($booking_id, $customer_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BookingApi->setLeadCustomer: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **booking_id** | **int**|  |
 **customer_id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

