# Swagger\Client\SessionApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSession**](SessionApi.md#createSession) | **POST** /session/add | Create a new session
[**deleteSession**](SessionApi.md#deleteSession) | **DELETE** /session/delete | Delete a session by ID
[**editSession**](SessionApi.md#editSession) | **POST** /session/edit | Update a session by ID
[**filterSessions**](SessionApi.md#filterSessions) | **GET** /session/filter | Retrieve all of tsessions that match a filter
[**getAllSessions**](SessionApi.md#getAllSessions) | **GET** /session/all | Retrieve all sessions including any deleted models
[**getAllWithTrashedSessions**](SessionApi.md#getAllWithTrashedSessions) | **GET** /session/all-with-trashed | Retrieve all sessions including any deleted models
[**getManifest**](SessionApi.md#getManifest) | **GET** /session/manifest | Retrieve the customer manifest for this session
[**getSession**](SessionApi.md#getSession) | **GET** /session | Retrieve a session by ID
[**getTodaySessions**](SessionApi.md#getTodaySessions) | **GET** /session/today | Retrieve all of todays sessions
[**getTommorowSessions**](SessionApi.md#getTommorowSessions) | **GET** /session/tommorow | Retrieve all of tommorows sessions


# **createSession**
> \Swagger\Client\Model\InlineResponse20043 createSession($start, $boat_id, $trip_id)

Create a new session

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\SessionApi();
$start = new \DateTime(); // \DateTime | 
$boat_id = 789; // int | 
$trip_id = 789; // int | 

try {
    $result = $api_instance->createSession($start, $boat_id, $trip_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SessionApi->createSession: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **\DateTime**|  |
 **boat_id** | **int**|  | [optional]
 **trip_id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20043**](../Model/InlineResponse20043.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteSession**
> \Swagger\Client\Model\InlineResponse2003 deleteSession($id)

Delete a session by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\SessionApi();
$id = 789; // int | 

try {
    $result = $api_instance->deleteSession($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SessionApi->deleteSession: ', $e->getMessage(), PHP_EOL;
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

# **editSession**
> \Swagger\Client\Model\InlineResponse20044 editSession($id, $start, $boat_id)

Update a session by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\SessionApi();
$id = 789; // int | 
$start = new \DateTime(); // \DateTime | 
$boat_id = 789; // int | 

try {
    $result = $api_instance->editSession($id, $start, $boat_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SessionApi->editSession: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **start** | **\DateTime**|  |
 **boat_id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20044**](../Model/InlineResponse20044.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **filterSessions**
> \Swagger\Client\Model\InlineResponse20045 filterSessions($after, $before, $trip_id, $ticket_id, $package_id, $course_id)

Retrieve all of tsessions that match a filter

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\SessionApi();
$after = new \DateTime(); // \DateTime | 
$before = new \DateTime(); // \DateTime | 
$trip_id = 789; // int | 
$ticket_id = 789; // int | 
$package_id = 789; // int | 
$course_id = 789; // int | 

try {
    $result = $api_instance->filterSessions($after, $before, $trip_id, $ticket_id, $package_id, $course_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SessionApi->filterSessions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **\DateTime**|  | [optional]
 **before** | **\DateTime**|  | [optional]
 **trip_id** | **int**|  | [optional]
 **ticket_id** | **int**|  | [optional]
 **package_id** | **int**|  | [optional]
 **course_id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20045**](../Model/InlineResponse20045.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllSessions**
> \Swagger\Client\Model\Session[] getAllSessions()

Retrieve all sessions including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\SessionApi();

try {
    $result = $api_instance->getAllSessions();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SessionApi->getAllSessions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Session[]**](../Model/Session.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedSessions**
> \Swagger\Client\Model\Session[] getAllWithTrashedSessions()

Retrieve all sessions including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\SessionApi();

try {
    $result = $api_instance->getAllWithTrashedSessions();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SessionApi->getAllWithTrashedSessions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Session[]**](../Model/Session.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getManifest**
> \Swagger\Client\Model\InlineResponse20043 getManifest($id)

Retrieve the customer manifest for this session

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\SessionApi();
$id = 789; // int | 

try {
    $result = $api_instance->getManifest($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SessionApi->getManifest: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20043**](../Model/InlineResponse20043.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSession**
> \Swagger\Client\Model\InlineResponse20043 getSession($id)

Retrieve a session by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\SessionApi();
$id = 789; // int | 

try {
    $result = $api_instance->getSession($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SessionApi->getSession: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20043**](../Model/InlineResponse20043.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTodaySessions**
> \Swagger\Client\Model\InlineResponse20045 getTodaySessions()

Retrieve all of todays sessions

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\SessionApi();

try {
    $result = $api_instance->getTodaySessions();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SessionApi->getTodaySessions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\InlineResponse20045**](../Model/InlineResponse20045.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTommorowSessions**
> \Swagger\Client\Model\InlineResponse20045 getTommorowSessions()

Retrieve all of tommorows sessions

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\SessionApi();

try {
    $result = $api_instance->getTommorowSessions();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SessionApi->getTommorowSessions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\InlineResponse20045**](../Model/InlineResponse20045.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

