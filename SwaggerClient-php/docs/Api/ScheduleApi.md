# Swagger\Client\ScheduleApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSchedule**](ScheduleApi.md#addSchedule) | **GET** /schedule/add | Create a new schedule for classes
[**getAllSchedules**](ScheduleApi.md#getAllSchedules) | **GET** /schedule/all | Retrieve all of the schedules for classes
[**getSchedule**](ScheduleApi.md#getSchedule) | **GET** /schedule | Retrieve a schedule by ID


# **addSchedule**
> \Swagger\Client\Model\InlineResponse2013 addSchedule($schedule, $training_session_id, $until)

Create a new schedule for classes

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ScheduleApi();
$schedule = "schedule_example"; // string | 
$training_session_id = 789; // int | 
$until = new \DateTime(); // \DateTime | 

try {
    $result = $api_instance->addSchedule($schedule, $training_session_id, $until);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScheduleApi->addSchedule: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **string**|  |
 **training_session_id** | **int**|  |
 **until** | **\DateTime**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2013**](../Model/InlineResponse2013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllSchedules**
> \Swagger\Client\Model\Schedule[] getAllSchedules()

Retrieve all of the schedules for classes

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ScheduleApi();

try {
    $result = $api_instance->getAllSchedules();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScheduleApi->getAllSchedules: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Schedule[]**](../Model/Schedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSchedule**
> \Swagger\Client\Model\Schedule getSchedule($id)

Retrieve a schedule by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ScheduleApi();
$id = 789; // int | 

try {
    $result = $api_instance->getSchedule($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScheduleApi->getSchedule: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\Schedule**](../Model/Schedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

