# Swagger\Client\CourseApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourse**](CourseApi.md#createCourse) | **POST** /course/add | Create a new course
[**deleteCourse**](CourseApi.md#deleteCourse) | **DELETE** /course/delete | Delete a course by ID
[**editCourse**](CourseApi.md#editCourse) | **POST** /course/edit | Update a course by ID
[**getAllCourses**](CourseApi.md#getAllCourses) | **GET** /course/all | Retrieve all courses including any deleted models
[**getAllWithTrashedCourses**](CourseApi.md#getAllWithTrashedCourses) | **GET** /course/all-with-trashed | Retrieve all courses including any deleted models
[**getCourse**](CourseApi.md#getCourse) | **GET** /course | Retrieve a course by ID


# **createCourse**
> \Swagger\Client\Model\InlineResponse20027 createCourse($name, $description, $capacity, $prices, $certificate_id, $tickets, $trainings)

Create a new course

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CourseApi();
$name = "name_example"; // string | 
$description = "description_example"; // string | 
$capacity = 56; // int | 
$prices = array(3.4); // double[] | 
$certificate_id = 56; // int | 
$tickets = array(56); // int[] | 
$trainings = array(56); // int[] | 

try {
    $result = $api_instance->createCourse($name, $description, $capacity, $prices, $certificate_id, $tickets, $trainings);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CourseApi->createCourse: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  |
 **description** | **string**|  |
 **capacity** | **int**|  |
 **prices** | [**double[]**](../Model/double.md)|  |
 **certificate_id** | **int**|  | [optional]
 **tickets** | [**int[]**](../Model/int.md)|  | [optional]
 **trainings** | [**int[]**](../Model/int.md)|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20027**](../Model/InlineResponse20027.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteCourse**
> \Swagger\Client\Model\InlineResponse2003 deleteCourse($id)

Delete a course by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CourseApi();
$id = 789; // int | 

try {
    $result = $api_instance->deleteCourse($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CourseApi->deleteCourse: ', $e->getMessage(), PHP_EOL;
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

# **editCourse**
> \Swagger\Client\Model\InlineResponse20028 editCourse($id, $name, $description, $capacity, $certificate_id, $tickets, $trainings)

Update a course by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CourseApi();
$id = 789; // int | 
$name = "name_example"; // string | 
$description = "description_example"; // string | 
$capacity = 56; // int | 
$certificate_id = 56; // int | 
$tickets = array(56); // int[] | 
$trainings = array(56); // int[] | 

try {
    $result = $api_instance->editCourse($id, $name, $description, $capacity, $certificate_id, $tickets, $trainings);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CourseApi->editCourse: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  |
 **name** | **string**|  |
 **description** | **string**|  |
 **capacity** | **int**|  |
 **certificate_id** | **int**|  | [optional]
 **tickets** | [**int[]**](../Model/int.md)|  | [optional]
 **trainings** | [**int[]**](../Model/int.md)|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20028**](../Model/InlineResponse20028.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllCourses**
> \Swagger\Client\Model\Course[] getAllCourses()

Retrieve all courses including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CourseApi();

try {
    $result = $api_instance->getAllCourses();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CourseApi->getAllCourses: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Course[]**](../Model/Course.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedCourses**
> \Swagger\Client\Model\Course[] getAllWithTrashedCourses()

Retrieve all courses including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CourseApi();

try {
    $result = $api_instance->getAllWithTrashedCourses();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CourseApi->getAllWithTrashedCourses: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Course[]**](../Model/Course.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getCourse**
> \Swagger\Client\Model\InlineResponse20027 getCourse($id)

Retrieve a course by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\CourseApi();
$id = 789; // int | 

try {
    $result = $api_instance->getCourse($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CourseApi->getCourse: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse20027**](../Model/InlineResponse20027.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

