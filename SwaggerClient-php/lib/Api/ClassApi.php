<?php
/**
 * ClassApi
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   http://github.com/swagger-api/swagger-codegen
 * @license  http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * Scubawhere API Documentation
 *
 * This is the documentation for scubawhere's RMS API. This API is only to be used by authorized parties with valid auth tokens.  [Learn about scubawhere](http://www.scubawhere.com) to become an authorized consumer of our API
 *
 * OpenAPI spec version: 1.0.0
 * Contact: bryan@scubawhere.com
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace Swagger\Client\Api;

use \Swagger\Client\Configuration;
use \Swagger\Client\ApiClient;
use \Swagger\Client\ApiException;
use \Swagger\Client\ObjectSerializer;

/**
 * ClassApi Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   http://github.com/swagger-api/swagger-codegen
 * @license  http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class ClassApi
{

    /**
     * API Client
     *
     * @var \Swagger\Client\ApiClient instance of the ApiClient
     */
    protected $apiClient;

    /**
     * Constructor
     *
     * @param \Swagger\Client\ApiClient|null $apiClient The api client to use
     */
    public function __construct(\Swagger\Client\ApiClient $apiClient = null)
    {
        if ($apiClient == null) {
            $apiClient = new ApiClient();
            $apiClient->getConfig()->setHost('https://dev.scubawhere.com/api');
        }

        $this->apiClient = $apiClient;
    }

    /**
     * Get API client
     *
     * @return \Swagger\Client\ApiClient get the API client
     */
    public function getApiClient()
    {
        return $this->apiClient;
    }

    /**
     * Set the API client
     *
     * @param \Swagger\Client\ApiClient $apiClient set the API client
     *
     * @return ClassApi
     */
    public function setApiClient(\Swagger\Client\ApiClient $apiClient)
    {
        $this->apiClient = $apiClient;
        return $this;
    }

    /**
     * Operation classGet
     *
     * Retrieve a class by ID
     *
     * @param int $id  (required)
     * @return \Swagger\Client\Model\Training
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function classGet($id)
    {
        list($response) = $this->classGetWithHttpInfo($id);
        return $response;
    }

    /**
     * Operation classGetWithHttpInfo
     *
     * Retrieve a class by ID
     *
     * @param int $id  (required)
     * @return Array of \Swagger\Client\Model\Training, HTTP status code, HTTP response headers (array of strings)
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function classGetWithHttpInfo($id)
    {
        // verify the required parameter 'id' is set
        if ($id === null) {
            throw new \InvalidArgumentException('Missing the required parameter $id when calling classGet');
        }
        // parse inputs
        $resourcePath = "/class";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = $this->apiClient->selectHeaderAccept(array('application/json'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(array('application/json'));

        // query params
        if ($id !== null) {
            $queryParams['id'] = $this->apiClient->getSerializer()->toQueryValue($id);
        }
        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'GET',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\Training',
                '/class'
            );

            return array($this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\Training', $httpHeader), $statusCode, $httpHeader);
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\Training', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
                case 404:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\ErrorModel', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
                case 422:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\ErrorModel', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

    /**
     * Operation createClass
     *
     * Create a new class
     *
     * @param string $name  (required)
     * @param float $duration  (required)
     * @param string $description  (optional)
     * @return \Swagger\Client\Model\InlineResponse20021
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function createClass($name, $duration, $description = null)
    {
        list($response) = $this->createClassWithHttpInfo($name, $duration, $description);
        return $response;
    }

    /**
     * Operation createClassWithHttpInfo
     *
     * Create a new class
     *
     * @param string $name  (required)
     * @param float $duration  (required)
     * @param string $description  (optional)
     * @return Array of \Swagger\Client\Model\InlineResponse20021, HTTP status code, HTTP response headers (array of strings)
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function createClassWithHttpInfo($name, $duration, $description = null)
    {
        // verify the required parameter 'name' is set
        if ($name === null) {
            throw new \InvalidArgumentException('Missing the required parameter $name when calling createClass');
        }
        // verify the required parameter 'duration' is set
        if ($duration === null) {
            throw new \InvalidArgumentException('Missing the required parameter $duration when calling createClass');
        }
        // parse inputs
        $resourcePath = "/class/add";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = $this->apiClient->selectHeaderAccept(array('application/json'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(array('application/json'));

        // query params
        if ($name !== null) {
            $queryParams['name'] = $this->apiClient->getSerializer()->toQueryValue($name);
        }
        // query params
        if ($description !== null) {
            $queryParams['description'] = $this->apiClient->getSerializer()->toQueryValue($description);
        }
        // query params
        if ($duration !== null) {
            $queryParams['duration'] = $this->apiClient->getSerializer()->toQueryValue($duration);
        }
        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'POST',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\InlineResponse20021',
                '/class/add'
            );

            return array($this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\InlineResponse20021', $httpHeader), $statusCode, $httpHeader);
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\InlineResponse20021', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
                case 422:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\ErrorModel', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

    /**
     * Operation deleteClass
     *
     * Delete a class by ID
     *
     * @param int $id  (required)
     * @return \Swagger\Client\Model\InlineResponse2003
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function deleteClass($id)
    {
        list($response) = $this->deleteClassWithHttpInfo($id);
        return $response;
    }

    /**
     * Operation deleteClassWithHttpInfo
     *
     * Delete a class by ID
     *
     * @param int $id  (required)
     * @return Array of \Swagger\Client\Model\InlineResponse2003, HTTP status code, HTTP response headers (array of strings)
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function deleteClassWithHttpInfo($id)
    {
        // verify the required parameter 'id' is set
        if ($id === null) {
            throw new \InvalidArgumentException('Missing the required parameter $id when calling deleteClass');
        }
        // parse inputs
        $resourcePath = "/class/delete";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = $this->apiClient->selectHeaderAccept(array('application/json'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(array('application/json'));

        // query params
        if ($id !== null) {
            $queryParams['id'] = $this->apiClient->getSerializer()->toQueryValue($id);
        }
        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'DELETE',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\InlineResponse2003',
                '/class/delete'
            );

            return array($this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\InlineResponse2003', $httpHeader), $statusCode, $httpHeader);
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\InlineResponse2003', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
                case 404:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\ErrorModel', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

    /**
     * Operation editClass
     *
     * Update a class by ID
     *
     * @param int $id  (required)
     * @param string $name  (required)
     * @param float $duration  (required)
     * @param string $description  (optional)
     * @return \Swagger\Client\Model\InlineResponse20022
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function editClass($id, $name, $duration, $description = null)
    {
        list($response) = $this->editClassWithHttpInfo($id, $name, $duration, $description);
        return $response;
    }

    /**
     * Operation editClassWithHttpInfo
     *
     * Update a class by ID
     *
     * @param int $id  (required)
     * @param string $name  (required)
     * @param float $duration  (required)
     * @param string $description  (optional)
     * @return Array of \Swagger\Client\Model\InlineResponse20022, HTTP status code, HTTP response headers (array of strings)
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function editClassWithHttpInfo($id, $name, $duration, $description = null)
    {
        // verify the required parameter 'id' is set
        if ($id === null) {
            throw new \InvalidArgumentException('Missing the required parameter $id when calling editClass');
        }
        // verify the required parameter 'name' is set
        if ($name === null) {
            throw new \InvalidArgumentException('Missing the required parameter $name when calling editClass');
        }
        // verify the required parameter 'duration' is set
        if ($duration === null) {
            throw new \InvalidArgumentException('Missing the required parameter $duration when calling editClass');
        }
        // parse inputs
        $resourcePath = "/class/edit";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = $this->apiClient->selectHeaderAccept(array('application/json'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(array('application/json'));

        // query params
        if ($id !== null) {
            $queryParams['id'] = $this->apiClient->getSerializer()->toQueryValue($id);
        }
        // query params
        if ($name !== null) {
            $queryParams['name'] = $this->apiClient->getSerializer()->toQueryValue($name);
        }
        // query params
        if ($description !== null) {
            $queryParams['description'] = $this->apiClient->getSerializer()->toQueryValue($description);
        }
        // query params
        if ($duration !== null) {
            $queryParams['duration'] = $this->apiClient->getSerializer()->toQueryValue($duration);
        }
        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'POST',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\InlineResponse20022',
                '/class/edit'
            );

            return array($this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\InlineResponse20022', $httpHeader), $statusCode, $httpHeader);
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\InlineResponse20022', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
                case 404:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\ErrorModel', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
                case 422:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\ErrorModel', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

    /**
     * Operation getAllClass
     *
     * Retrieve all classes including any deleted models
     *
     * @return \Swagger\Client\Model\Training[]
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function getAllClass()
    {
        list($response) = $this->getAllClassWithHttpInfo();
        return $response;
    }

    /**
     * Operation getAllClassWithHttpInfo
     *
     * Retrieve all classes including any deleted models
     *
     * @return Array of \Swagger\Client\Model\Training[], HTTP status code, HTTP response headers (array of strings)
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function getAllClassWithHttpInfo()
    {
        // parse inputs
        $resourcePath = "/class/all";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = $this->apiClient->selectHeaderAccept(array('application/json'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(array('application/json'));

        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'GET',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\Training[]',
                '/class/all'
            );

            return array($this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\Training[]', $httpHeader), $statusCode, $httpHeader);
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\Training[]', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

    /**
     * Operation getAllWithTrashedClass
     *
     * Retrieve all classes including any deleted models
     *
     * @return \Swagger\Client\Model\Training[]
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function getAllWithTrashedClass()
    {
        list($response) = $this->getAllWithTrashedClassWithHttpInfo();
        return $response;
    }

    /**
     * Operation getAllWithTrashedClassWithHttpInfo
     *
     * Retrieve all classes including any deleted models
     *
     * @return Array of \Swagger\Client\Model\Training[], HTTP status code, HTTP response headers (array of strings)
     * @throws \Swagger\Client\ApiException on non-2xx response
     */
    public function getAllWithTrashedClassWithHttpInfo()
    {
        // parse inputs
        $resourcePath = "/class/all-with-trashed";
        $httpBody = '';
        $queryParams = array();
        $headerParams = array();
        $formParams = array();
        $_header_accept = $this->apiClient->selectHeaderAccept(array('application/json'));
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(array('application/json'));

        // default format to json
        $resourcePath = str_replace("{format}", "json", $resourcePath);

        
        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'GET',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\Training[]',
                '/class/all-with-trashed'
            );

            return array($this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\Training[]', $httpHeader), $statusCode, $httpHeader);
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\Training[]', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

}
