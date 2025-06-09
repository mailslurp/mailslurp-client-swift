# StructuredOutputSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**anyOf** | [StructuredOutputSchema] |  | [optional] 
**_default** | **JSONValue** |  | [optional] 
**_description** | **String** | Provide a description of the schema to help the AI understand the schema. | [optional] 
**_enum** | **[String]** | When using type string and format enum pass a collection of enum values here. | [optional] 
**example** | **JSONValue** |  | [optional] 
**format** | **String** | Format for string types. Can be null, date-time or enum. | [optional] 
**items** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**maxItems** | **Int64** |  | [optional] 
**minItems** | **Int64** |  | [optional] 
**maxLength** | **Int64** |  | [optional] 
**minLength** | **Int64** |  | [optional] 
**pattern** | **String** |  | [optional] 
**properties** | [String: StructuredOutputSchema] | Properties of an OBJECT schema. These are key value pairs where the key is the property name and the value is the schema for that property. | [optional] 
**propertyOrdering** | **[String]** | Pass an array of property names to specify the order of properties in the generated JSON object if required. | [optional] 
**_required** | **[String]** |  | [optional] 
**maxProperties** | **Int64** |  | [optional] 
**minProperties** | **Int64** |  | [optional] 
**maximum** | **Double** |  | [optional] 
**minimum** | **Double** |  | [optional] 
**nullable** | **Bool** |  | [optional] 
**title** | **String** |  | [optional] 
**type** | **String** | Primitive JSON schema types with a fallback CUSTOM for unknown values. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


