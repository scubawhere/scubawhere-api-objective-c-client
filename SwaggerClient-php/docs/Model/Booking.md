# Booking

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**reference** | **string** |  | [optional] 
**lead_customer_id** | **int** |  | [optional] 
**agent_id** | **int** |  | [optional] 
**agent_reference** | **string** |  | [optional] 
**source** | **string** |  | [optional] 
**price** | **int** |  | [optional] 
**discount** | **int** |  | [optional] 
**status** | **string** |  | [optional] 
**reserved_until** | [**\DateTime**](Date.md) |  | [optional] 
**cancellation_fee** | **int** |  | [optional] 
**comment** | **string** |  | [optional] 
**parent_id** | **int** |  | [optional] 
**decimal_price** | **string** |  | [optional] 
**real_decimal_price** | **string** |  | [optional] 
**arrival_date** | [**\DateTime**](Date.md) |  | [optional] 
**created_at_local** | [**\DateTime**](Date.md) |  | [optional] 
**lead_customer** | [**\Swagger\Client\Model\Customer**](Customer.md) |  | [optional] 
**payments** | [**\Swagger\Client\Model\Payment[]**](Payment.md) |  | [optional] 
**refunds** | [**\Swagger\Client\Model\Refund[]**](Refund.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


