//
// PhoneControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit

@objc open class PhoneControllerAPI : NSObject {
    /**

     - parameter createEmergencyAddressOptions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<EmergencyAddress>
     */
    open class func createEmergencyAddress( createEmergencyAddressOptions: CreateEmergencyAddressOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<EmergencyAddress> {
        let deferred = Promise<EmergencyAddress>.pending()
        createEmergencyAddressWithRequestBuilder(createEmergencyAddressOptions: createEmergencyAddressOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     - POST /phone/emergency-addresses
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createEmergencyAddressOptions: (body)  
     - returns: RequestBuilder<EmergencyAddress> 
     */
    open class func createEmergencyAddressWithRequestBuilder(createEmergencyAddressOptions: CreateEmergencyAddressOptions) -> RequestBuilder<EmergencyAddress> {
        let path = "/phone/emergency-addresses"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createEmergencyAddressOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EmergencyAddress>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter addressId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<EmptyResponseDto>
     */
    open class func deleteEmergencyAddress( addressId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<EmptyResponseDto> {
        let deferred = Promise<EmptyResponseDto>.pending()
        deleteEmergencyAddressWithRequestBuilder(addressId: addressId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     - DELETE /phone/emergency-addresses/{addressId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter addressId: (path)  
     - returns: RequestBuilder<EmptyResponseDto> 
     */
    open class func deleteEmergencyAddressWithRequestBuilder(addressId: UUID) -> RequestBuilder<EmptyResponseDto> {
        var path = "/phone/emergency-addresses/{addressId}"
        let addressIdPreEscape = "\(APIHelper.mapValueToPathItem(addressId))"
        let addressIdPostEscape = addressIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{addressId}", with: addressIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EmptyResponseDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter phoneNumberId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func deletePhoneNumber( phoneNumberId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deletePhoneNumberWithRequestBuilder(phoneNumberId: phoneNumberId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                deferred.resolver.fulfill(())
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     - DELETE /phone/numbers/{phoneNumberId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter phoneNumberId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deletePhoneNumberWithRequestBuilder(phoneNumberId: UUID) -> RequestBuilder<Void> {
        var path = "/phone/numbers/{phoneNumberId}"
        let phoneNumberIdPreEscape = "\(APIHelper.mapValueToPathItem(phoneNumberId))"
        let phoneNumberIdPostEscape = phoneNumberIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{phoneNumberId}", with: phoneNumberIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter addressId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<EmergencyAddress>
     */
    open class func getEmergencyAddress( addressId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<EmergencyAddress> {
        let deferred = Promise<EmergencyAddress>.pending()
        getEmergencyAddressWithRequestBuilder(addressId: addressId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     - GET /phone/emergency-addresses/{addressId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter addressId: (path)  
     - returns: RequestBuilder<EmergencyAddress> 
     */
    open class func getEmergencyAddressWithRequestBuilder(addressId: UUID) -> RequestBuilder<EmergencyAddress> {
        var path = "/phone/emergency-addresses/{addressId}"
        let addressIdPreEscape = "\(APIHelper.mapValueToPathItem(addressId))"
        let addressIdPostEscape = addressIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{addressId}", with: addressIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EmergencyAddress>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[EmergencyAddressDto]>
     */
    open class func getEmergencyAddresses(apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<[EmergencyAddressDto]> {
        let deferred = Promise<[EmergencyAddressDto]>.pending()
        getEmergencyAddressesWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     - GET /phone/emergency-addresses
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<[EmergencyAddressDto]> 
     */
    open class func getEmergencyAddressesWithRequestBuilder() -> RequestBuilder<[EmergencyAddressDto]> {
        let path = "/phone/emergency-addresses"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[EmergencyAddressDto]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter phoneNumberId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PhoneNumberDto>
     */
    open class func getPhoneNumber( phoneNumberId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PhoneNumberDto> {
        let deferred = Promise<PhoneNumberDto>.pending()
        getPhoneNumberWithRequestBuilder(phoneNumberId: phoneNumberId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     - GET /phone/numbers/{phoneNumberId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter phoneNumberId: (path)  
     - returns: RequestBuilder<PhoneNumberDto> 
     */
    open class func getPhoneNumberWithRequestBuilder(phoneNumberId: UUID) -> RequestBuilder<PhoneNumberDto> {
        var path = "/phone/numbers/{phoneNumberId}"
        let phoneNumberIdPreEscape = "\(APIHelper.mapValueToPathItem(phoneNumberId))"
        let phoneNumberIdPostEscape = phoneNumberIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{phoneNumberId}", with: phoneNumberIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PhoneNumberDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter phoneCountry
     */
    public enum PhoneCountry_getPhoneNumbers: String, CaseIterable {
        case us = "US"
        case gb = "GB"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getPhoneNumbers: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**

     - parameter phoneCountry: (query) Optional phone country (optional)
     - parameter page: (query) Optional page index for list pagination (optional, default to 0)
     - parameter size: (query) Optional page size for list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PagePhoneNumberProjection>
     */
    open class func getPhoneNumbers( phoneCountry: PhoneCountry_getPhoneNumbers? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getPhoneNumbers? = nil,  since: Date? = nil,  before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PagePhoneNumberProjection> {
        let deferred = Promise<PagePhoneNumberProjection>.pending()
        getPhoneNumbersWithRequestBuilder(phoneCountry: phoneCountry, page: page, size: size, sort: sort, since: since, before: before).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     - GET /phone/numbers
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter phoneCountry: (query) Optional phone country (optional)
     - parameter page: (query) Optional page index for list pagination (optional, default to 0)
     - parameter size: (query) Optional page size for list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PagePhoneNumberProjection> 
     */
    open class func getPhoneNumbersWithRequestBuilder(phoneCountry: PhoneCountry_getPhoneNumbers? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getPhoneNumbers? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PagePhoneNumberProjection> {
        let path = "/phone/numbers"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "phoneCountry": phoneCountry?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PagePhoneNumberProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[PhonePlanDto]>
     */
    open class func getPhonePlans(apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<[PhonePlanDto]> {
        let deferred = Promise<[PhonePlanDto]>.pending()
        getPhonePlansWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     - GET /phone/plans
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<[PhonePlanDto]> 
     */
    open class func getPhonePlansWithRequestBuilder() -> RequestBuilder<[PhonePlanDto]> {
        let path = "/phone/plans"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[PhonePlanDto]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter phoneNumberId: (path)  
     - parameter testPhoneNumberOptions: (body)  
     - parameter xTestId: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func testPhoneNumberSendSms( phoneNumberId: UUID,  testPhoneNumberOptions: TestPhoneNumberOptions,  xTestId: String? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        testPhoneNumberSendSmsWithRequestBuilder(phoneNumberId: phoneNumberId, testPhoneNumberOptions: testPhoneNumberOptions, xTestId: xTestId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                deferred.resolver.fulfill(())
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     - POST /phone/numbers/{phoneNumberId}/test
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter phoneNumberId: (path)  
     - parameter testPhoneNumberOptions: (body)  
     - parameter xTestId: (header)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func testPhoneNumberSendSmsWithRequestBuilder(phoneNumberId: UUID, testPhoneNumberOptions: TestPhoneNumberOptions, xTestId: String? = nil) -> RequestBuilder<Void> {
        var path = "/phone/numbers/{phoneNumberId}/test"
        let phoneNumberIdPreEscape = "\(APIHelper.mapValueToPathItem(phoneNumberId))"
        let phoneNumberIdPostEscape = phoneNumberIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{phoneNumberId}", with: phoneNumberIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: testPhoneNumberOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-test-id": xTestId?.encodeToJSON(),
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
