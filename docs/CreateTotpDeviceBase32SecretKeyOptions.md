# CreateTotpDeviceBase32SecretKeyOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base32SecretKey** | **String** | Base32 secret key for TOTP device as alternative to OTP Auth URI or QR code. | 
**name** | **String** | Name for labeling the TOTP device | [optional] 
**username** | **String** | Optional username for the TOTP device | [optional] 
**issuer** | **String** | Optional issuer override for the TOTP device | [optional] 
**digits** | **Int** | Optional number of digits in TOTP code | [optional] [default to 6]
**period** | **Int** | Optional period in seconds for TOTP code expiration | [optional] [default to 30]
**algorithm** | **String** | Optional algorithm override | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


