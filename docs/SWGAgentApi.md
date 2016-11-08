# SWGAgentApi

All URIs are relative to *https://dev.scubawhere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAgent**](SWGAgentApi.md#createagent) | **POST** /agent/add | Create a new agent
[**deleteAgent**](SWGAgentApi.md#deleteagent) | **DELETE** /agent/delete | Delete an agent by ID
[**getAgent**](SWGAgentApi.md#getagent) | **GET** /agent | Retrieve an agent by ID
[**getAllAgents**](SWGAgentApi.md#getallagents) | **GET** /agent/all | Retrieve all agents
[**getAllWithTrashedAgents**](SWGAgentApi.md#getallwithtrashedagents) | **GET** /agent/all-with-trashed | Retrieve all agents including any deleted models


# **createAgent**
```objc
-(NSNumber*) createAgentWithName: (NSNumber*) name
    branchName: (NSString*) branchName
    branchAddress: (NSString*) branchAddress
    branchPhone: (NSString*) branchPhone
    branchEmail: (NSString*) branchEmail
    commission: (NSNumber*) commission
    terms: (NSString*) terms
    website: (NSString*) website
    billingAddress: (NSString*) billingAddress
    billingPhone: (NSString*) billingPhone
    billingEmail: (NSString*) billingEmail
        completionHandler: (void (^)(SWGInlineResponse2004* output, NSError* error)) handler;
```

Create a new agent

### Example 
```objc

NSNumber* name = @789; // 
NSString* branchName = @"branchName_example"; // 
NSString* branchAddress = @"branchAddress_example"; // 
NSString* branchPhone = @"branchPhone_example"; // 
NSString* branchEmail = @"branchEmail_example"; // 
NSNumber* commission = @3.4; // 
NSString* terms = @"terms_example"; // 
NSString* website = @"website_example"; //  (optional)
NSString* billingAddress = @"billingAddress_example"; //  (optional)
NSString* billingPhone = @"billingPhone_example"; //  (optional)
NSString* billingEmail = @"billingEmail_example"; //  (optional)

SWGAgentApi*apiInstance = [[SWGAgentApi alloc] init];

// Create a new agent
[apiInstance createAgentWithName:name
              branchName:branchName
              branchAddress:branchAddress
              branchPhone:branchPhone
              branchEmail:branchEmail
              commission:commission
              terms:terms
              website:website
              billingAddress:billingAddress
              billingPhone:billingPhone
              billingEmail:billingEmail
          completionHandler: ^(SWGInlineResponse2004* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAgentApi->createAgent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSNumber***|  | 
 **branchName** | **NSString***|  | 
 **branchAddress** | **NSString***|  | 
 **branchPhone** | **NSString***|  | 
 **branchEmail** | **NSString***|  | 
 **commission** | **NSNumber***|  | 
 **terms** | **NSString***|  | 
 **website** | **NSString***|  | [optional] 
 **billingAddress** | **NSString***|  | [optional] 
 **billingPhone** | **NSString***|  | [optional] 
 **billingEmail** | **NSString***|  | [optional] 

### Return type

[**SWGInlineResponse2004***](SWGInlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAgent**
```objc
-(NSNumber*) deleteAgentWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Delete an agent by ID

### Example 
```objc

NSNumber* _id = @789; // ID of the Agent

SWGAgentApi*apiInstance = [[SWGAgentApi alloc] init];

// Delete an agent by ID
[apiInstance deleteAgentWithId:_id
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAgentApi->deleteAgent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of the Agent | 

### Return type

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgent**
```objc
-(NSNumber*) getAgentWithId: (NSNumber*) _id
        completionHandler: (void (^)(SWGInlineResponse2004* output, NSError* error)) handler;
```

Retrieve an agent by ID

### Example 
```objc

NSNumber* _id = @789; // ID of the agent to be retrieved

SWGAgentApi*apiInstance = [[SWGAgentApi alloc] init];

// Retrieve an agent by ID
[apiInstance getAgentWithId:_id
          completionHandler: ^(SWGInlineResponse2004* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAgentApi->getAgent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of the agent to be retrieved | 

### Return type

[**SWGInlineResponse2004***](SWGInlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAgents**
```objc
-(NSNumber*) getAllAgentsWithCompletionHandler: 
        (void (^)(NSArray<SWGAgent>* output, NSError* error)) handler;
```

Retrieve all agents

### Example 
```objc


SWGAgentApi*apiInstance = [[SWGAgentApi alloc] init];

// Retrieve all agents
[apiInstance getAllAgentsWithCompletionHandler: 
          ^(NSArray<SWGAgent>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAgentApi->getAllAgents: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGAgent>***](SWGAgent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithTrashedAgents**
```objc
-(NSNumber*) getAllWithTrashedAgentsWithCompletionHandler: 
        (void (^)(NSArray<SWGAgent>* output, NSError* error)) handler;
```

Retrieve all agents including any deleted models

### Example 
```objc


SWGAgentApi*apiInstance = [[SWGAgentApi alloc] init];

// Retrieve all agents including any deleted models
[apiInstance getAllWithTrashedAgentsWithCompletionHandler: 
          ^(NSArray<SWGAgent>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAgentApi->getAllWithTrashedAgents: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGAgent>***](SWGAgent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

