# Swagger\Client\ClasssessionApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**classSessionGet**](ClasssessionApi.md#classSessionGet) | **GET** /class-session | Retrieve a class session by ID
[**createClassSession**](ClasssessionApi.md#createClassSession) | **POST** /class-session/add | Create a new class session
[**deleteClasssession**](ClasssessionApi.md#deleteClasssession) | **DELETE** /class-session/delete | Delete a class session by ID
[**editClassSession**](ClasssessionApi.md#editClassSession) | **POST** /class-session/edit | Update a class session by ID
[**filterClassSession**](ClasssessionApi.md#filterClassSession) | **GET** /class-session/filter | Retrieve all class sessions that match a filter
[**getAllClassSessions**](ClasssessionApi.md#getAllClassSessions) | **GET** /class-session/all | Retrieve all class sessions including any deleted models
[**getAllWithTrashedClassSessions**](ClasssessionApi.md#getAllWithTrashedClassSessions) | **GET** /class-session/all-with-trashed | Retrieve all class sessions including any deleted models
[**getClassSessionManifest**](ClasssessionApi.md#getClassSessionManifest) | **GET** /class-session/manifest | Retrieve the customer manifest for a class session
[**getTodaysClassSession**](ClasssessionApi.md#getTodaysClassSession) | **GET** /class-session/today | Retrieve all class sessions that start today
[**getTommorowsClassSession**](ClasssessionApi.md#getTommorowsClassSession) | **GET** /class-session/tommorow | Retrieve all class sessions that start tommorow


# **classSessionGet**
> \Swagger\Client\Model\TrainingSession classSessionGet($id)

Retrieve a class session by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClasssessionApi();
$id = 789; // int | 

try {
    $result = $api_instance->classSessionGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClasssessionApi->classSessionGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\TrainingSession**](../Model/TrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **createClassSession**
> \Swagger\Client\Model\InlineResponse20019 createClassSession($start, $training_id)

Create a new class session

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClasssessionApi();
$start = new \DateTime(); // \DateTime | 
$training_id = 789; // int | 

try {
    $result = $api_instance->createClassSession($start, $training_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClasssessionApi->createClassSession: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **\DateTime**|  |
 **training_id** | **int**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20019**](../Model/InlineResponse20019.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteClasssession**
> \Swagger\Client\Model\InlineResponse2003 deleteClasssession($id)

Delete a class session by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClasssessionApi();
$id = 789; // int | 

try {
    $result = $api_instance->deleteClasssession($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClasssessionApi->deleteClasssession: ', $e->getMessage(), PHP_EOL;
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

# **editClassSession**
> \Swagger\Client\Model\InlineResponse20020 editClassSession($id, $start)

Update a class session by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClasssessionApi();
$id = 56; // int | 
$start = new \DateTime(); // \DateTime | 

try {
    $result = $api_instance->editClassSession($id, $start);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClasssessionApi->editClassSession: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **start** | **\DateTime**|  |

### Return type

[**\Swagger\Client\Model\InlineResponse20020**](../Model/InlineResponse20020.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **filterClassSession**
> \Swagger\Client\Model\TrainingSession[] filterClassSession()

Retrieve all class sessions that match a filter

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClasssessionApi();

try {
    $result = $api_instance->filterClassSession();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClasssessionApi->filterClassSession: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\TrainingSession[]**](../Model/TrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllClassSessions**
> \Swagger\Client\Model\TrainingSession[] getAllClassSessions()

Retrieve all class sessions including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClasssessionApi();

try {
    $result = $api_instance->getAllClassSessions();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClasssessionApi->getAllClassSessions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\TrainingSession[]**](../Model/TrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedClassSessions**
> \Swagger\Client\Model\TrainingSession[] getAllWithTrashedClassSessions()

Retrieve all class sessions including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClasssessionApi();

try {
    $result = $api_instance->getAllWithTrashedClassSessions();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClasssessionApi->getAllWithTrashedClassSessions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\TrainingSession[]**](../Model/TrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getClassSessionManifest**
> \Swagger\Client\Model\TrainingSessionManifest getClassSessionManifest($id)

Retrieve the customer manifest for a class session

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClasssessionApi();
$id = 789; // int | 

try {
    $result = $api_instance->getClassSessionManifest($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClasssessionApi->getClassSessionManifest: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\TrainingSessionManifest**](../Model/TrainingSessionManifest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTodaysClassSession**
> \Swagger\Client\Model\TrainingSession[] getTodaysClassSession()

Retrieve all class sessions that start today

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClasssessionApi();

try {
    $result = $api_instance->getTodaysClassSession();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClasssessionApi->getTodaysClassSession: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\TrainingSession[]**](../Model/TrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTommorowsClassSession**
> \Swagger\Client\Model\TrainingSession[] getTommorowsClassSession()

Retrieve all class sessions that start tommorow

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ClasssessionApi();

try {
    $result = $api_instance->getTommorowsClassSession();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClasssessionApi->getTommorowsClassSession: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\TrainingSession[]**](../Model/TrainingSession.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

