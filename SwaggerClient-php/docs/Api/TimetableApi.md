# Swagger\Client\TimetableApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTimetable**](TimetableApi.md#addTimetable) | **GET** /timetable/add | Create a new timetable for sessions
[**getAllTimetables**](TimetableApi.md#getAllTimetables) | **GET** /timetable/all | Retrieve all of the timetables for sessions
[**getTimetable**](TimetableApi.md#getTimetable) | **GET** /timetable | Retrieve a timetable by ID


# **addTimetable**
> \Swagger\Client\Model\InlineResponse2015 addTimetable($schedule, $session_id, $until)

Create a new timetable for sessions

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TimetableApi();
$schedule = "schedule_example"; // string | 
$session_id = 789; // int | 
$until = new \DateTime(); // \DateTime | 

try {
    $result = $api_instance->addTimetable($schedule, $session_id, $until);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TimetableApi->addTimetable: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **string**|  |
 **session_id** | **int**|  |
 **until** | **\DateTime**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2015**](../Model/InlineResponse2015.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllTimetables**
> \Swagger\Client\Model\Timetable[] getAllTimetables()

Retrieve all of the timetables for sessions

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TimetableApi();

try {
    $result = $api_instance->getAllTimetables();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TimetableApi->getAllTimetables: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Timetable[]**](../Model/Timetable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTimetable**
> \Swagger\Client\Model\Timetable getTimetable($id)

Retrieve a timetable by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\TimetableApi();
$id = 789; // int | 

try {
    $result = $api_instance->getTimetable($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TimetableApi->getTimetable: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |

### Return type

[**\Swagger\Client\Model\Timetable**](../Model/Timetable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

