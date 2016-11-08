# Swagger\Client\AgentApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAgent**](AgentApi.md#createAgent) | **POST** /agent/add | Create a new agent
[**deleteAgent**](AgentApi.md#deleteAgent) | **DELETE** /agent/delete | Delete an agent by ID
[**getAgent**](AgentApi.md#getAgent) | **GET** /agent | Retrieve an agent by ID
[**getAllAgents**](AgentApi.md#getAllAgents) | **GET** /agent/all | Retrieve all agents
[**getAllWithTrashedAgents**](AgentApi.md#getAllWithTrashedAgents) | **GET** /agent/all-with-trashed | Retrieve all agents including any deleted models


# **createAgent**
> \Swagger\Client\Model\InlineResponse2004 createAgent($name, $branch_name, $branch_address, $branch_phone, $branch_email, $commission, $terms, $website, $billing_address, $billing_phone, $billing_email)

Create a new agent

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AgentApi();
$name = 789; // int | 
$branch_name = "branch_name_example"; // string | 
$branch_address = "branch_address_example"; // string | 
$branch_phone = "branch_phone_example"; // string | 
$branch_email = "branch_email_example"; // string | 
$commission = 3.4; // float | 
$terms = "terms_example"; // string | 
$website = "website_example"; // string | 
$billing_address = "billing_address_example"; // string | 
$billing_phone = "billing_phone_example"; // string | 
$billing_email = "billing_email_example"; // string | 

try {
    $result = $api_instance->createAgent($name, $branch_name, $branch_address, $branch_phone, $branch_email, $commission, $terms, $website, $billing_address, $billing_phone, $billing_email);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentApi->createAgent: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **int**|  |
 **branch_name** | **string**|  |
 **branch_address** | **string**|  |
 **branch_phone** | **string**|  |
 **branch_email** | **string**|  |
 **commission** | **float**|  |
 **terms** | **string**|  |
 **website** | **string**|  | [optional]
 **billing_address** | **string**|  | [optional]
 **billing_phone** | **string**|  | [optional]
 **billing_email** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse2004**](../Model/InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteAgent**
> \Swagger\Client\Model\InlineResponse2003 deleteAgent($id)

Delete an agent by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AgentApi();
$id = 789; // int | ID of the Agent

try {
    $result = $api_instance->deleteAgent($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentApi->deleteAgent: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the Agent |

### Return type

[**\Swagger\Client\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAgent**
> \Swagger\Client\Model\InlineResponse2004 getAgent($id)

Retrieve an agent by ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AgentApi();
$id = 789; // int | ID of the agent to be retrieved

try {
    $result = $api_instance->getAgent($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentApi->getAgent: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the agent to be retrieved |

### Return type

[**\Swagger\Client\Model\InlineResponse2004**](../Model/InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllAgents**
> \Swagger\Client\Model\Agent[] getAllAgents()

Retrieve all agents

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AgentApi();

try {
    $result = $api_instance->getAllAgents();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentApi->getAllAgents: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Agent[]**](../Model/Agent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAllWithTrashedAgents**
> \Swagger\Client\Model\Agent[] getAllWithTrashedAgents()

Retrieve all agents including any deleted models

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\AgentApi();

try {
    $result = $api_instance->getAllWithTrashedAgents();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentApi->getAllWithTrashedAgents: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Agent[]**](../Model/Agent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

