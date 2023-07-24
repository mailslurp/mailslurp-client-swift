//
// ToolsControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc open class ToolsControllerAPI : NSObject {

    /**
     Create a BIMI record policy
     
     - parameter generateBimiRecordOptions: (body)  
     - returns: Promise<GenerateBimiRecordResults>
     */
    open class func generateBimiRecord( generateBimiRecordOptions: GenerateBimiRecordOptions) -> Promise<GenerateBimiRecordResults> {
        let deferred = Promise<GenerateBimiRecordResults>.pending()
        generateBimiRecordWithRequestBuilder(generateBimiRecordOptions: generateBimiRecordOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Create a BIMI record policy
     - POST /tools/generate-bimi-record
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter generateBimiRecordOptions: (body)  
     - returns: RequestBuilder<GenerateBimiRecordResults> 
     */
    open class func generateBimiRecordWithRequestBuilder(generateBimiRecordOptions: GenerateBimiRecordOptions) -> RequestBuilder<GenerateBimiRecordResults> {
        let localVariablePath = "/tools/generate-bimi-record"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: generateBimiRecordOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GenerateBimiRecordResults>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create a DMARC record policy
     
     - parameter generateDmarcRecordOptions: (body)  
     - returns: Promise<GenerateDmarcRecordResults>
     */
    open class func generateDmarcRecord( generateDmarcRecordOptions: GenerateDmarcRecordOptions) -> Promise<GenerateDmarcRecordResults> {
        let deferred = Promise<GenerateDmarcRecordResults>.pending()
        generateDmarcRecordWithRequestBuilder(generateDmarcRecordOptions: generateDmarcRecordOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Create a DMARC record policy
     - POST /tools/generate-dmarc-record
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter generateDmarcRecordOptions: (body)  
     - returns: RequestBuilder<GenerateDmarcRecordResults> 
     */
    open class func generateDmarcRecordWithRequestBuilder(generateDmarcRecordOptions: GenerateDmarcRecordOptions) -> RequestBuilder<GenerateDmarcRecordResults> {
        let localVariablePath = "/tools/generate-dmarc-record"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: generateDmarcRecordOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GenerateDmarcRecordResults>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create a TLS reporting record policy
     
     - parameter generateMtaStsRecordOptions: (body)  
     - returns: Promise<GenerateMtaStsRecordResults>
     */
    open class func generateMtaStsRecord( generateMtaStsRecordOptions: GenerateMtaStsRecordOptions) -> Promise<GenerateMtaStsRecordResults> {
        let deferred = Promise<GenerateMtaStsRecordResults>.pending()
        generateMtaStsRecordWithRequestBuilder(generateMtaStsRecordOptions: generateMtaStsRecordOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Create a TLS reporting record policy
     - POST /tools/generate-mta-sts-record
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter generateMtaStsRecordOptions: (body)  
     - returns: RequestBuilder<GenerateMtaStsRecordResults> 
     */
    open class func generateMtaStsRecordWithRequestBuilder(generateMtaStsRecordOptions: GenerateMtaStsRecordOptions) -> RequestBuilder<GenerateMtaStsRecordResults> {
        let localVariablePath = "/tools/generate-mta-sts-record"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: generateMtaStsRecordOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GenerateMtaStsRecordResults>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create a TLS reporting record policy
     
     - parameter generateTlsReportingRecordOptions: (body)  
     - returns: Promise<GenerateTlsReportingRecordResults>
     */
    open class func generateTlsReportingRecord( generateTlsReportingRecordOptions: GenerateTlsReportingRecordOptions) -> Promise<GenerateTlsReportingRecordResults> {
        let deferred = Promise<GenerateTlsReportingRecordResults>.pending()
        generateTlsReportingRecordWithRequestBuilder(generateTlsReportingRecordOptions: generateTlsReportingRecordOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Create a TLS reporting record policy
     - POST /tools/generate-tls-reporting-record
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter generateTlsReportingRecordOptions: (body)  
     - returns: RequestBuilder<GenerateTlsReportingRecordResults> 
     */
    open class func generateTlsReportingRecordWithRequestBuilder(generateTlsReportingRecordOptions: GenerateTlsReportingRecordOptions) -> RequestBuilder<GenerateTlsReportingRecordResults> {
        let localVariablePath = "/tools/generate-tls-reporting-record"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: generateTlsReportingRecordOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GenerateTlsReportingRecordResults>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Lookup a BIMI record policy
     
     - parameter lookupBimiDomainOptions: (body)  
     - returns: Promise<LookupBimiDomainResults>
     */
    open class func lookupBimiDomain( lookupBimiDomainOptions: LookupBimiDomainOptions) -> Promise<LookupBimiDomainResults> {
        let deferred = Promise<LookupBimiDomainResults>.pending()
        lookupBimiDomainWithRequestBuilder(lookupBimiDomainOptions: lookupBimiDomainOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Lookup a BIMI record policy
     - POST /tools/lookup-bimi-domain
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter lookupBimiDomainOptions: (body)  
     - returns: RequestBuilder<LookupBimiDomainResults> 
     */
    open class func lookupBimiDomainWithRequestBuilder(lookupBimiDomainOptions: LookupBimiDomainOptions) -> RequestBuilder<LookupBimiDomainResults> {
        let localVariablePath = "/tools/lookup-bimi-domain"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: lookupBimiDomainOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LookupBimiDomainResults>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Lookup a DMARC record policy
     
     - parameter lookupDmarcDomainOptions: (body)  
     - returns: Promise<LookupDmarcDomainResults>
     */
    open class func lookupDmarcDomain( lookupDmarcDomainOptions: LookupDmarcDomainOptions) -> Promise<LookupDmarcDomainResults> {
        let deferred = Promise<LookupDmarcDomainResults>.pending()
        lookupDmarcDomainWithRequestBuilder(lookupDmarcDomainOptions: lookupDmarcDomainOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Lookup a DMARC record policy
     - POST /tools/lookup-dmarc-domain
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter lookupDmarcDomainOptions: (body)  
     - returns: RequestBuilder<LookupDmarcDomainResults> 
     */
    open class func lookupDmarcDomainWithRequestBuilder(lookupDmarcDomainOptions: LookupDmarcDomainOptions) -> RequestBuilder<LookupDmarcDomainResults> {
        let localVariablePath = "/tools/lookup-dmarc-domain"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: lookupDmarcDomainOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LookupDmarcDomainResults>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Lookup a MTA-STS domain policy
     
     - parameter lookupMtaStsDomainOptions: (body)  
     - returns: Promise<LookupMtaStsDomainResults>
     */
    open class func lookupMtaStsDomain( lookupMtaStsDomainOptions: LookupMtaStsDomainOptions) -> Promise<LookupMtaStsDomainResults> {
        let deferred = Promise<LookupMtaStsDomainResults>.pending()
        lookupMtaStsDomainWithRequestBuilder(lookupMtaStsDomainOptions: lookupMtaStsDomainOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Lookup a MTA-STS domain policy
     - POST /tools/lookup-mta-sts-domain
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter lookupMtaStsDomainOptions: (body)  
     - returns: RequestBuilder<LookupMtaStsDomainResults> 
     */
    open class func lookupMtaStsDomainWithRequestBuilder(lookupMtaStsDomainOptions: LookupMtaStsDomainOptions) -> RequestBuilder<LookupMtaStsDomainResults> {
        let localVariablePath = "/tools/lookup-mta-sts-domain"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: lookupMtaStsDomainOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LookupMtaStsDomainResults>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Lookup a TLS reporting domain policy
     
     - parameter lookupTlsReportingDomainOptions: (body)  
     - returns: Promise<LookupTlsReportingDomainResults>
     */
    open class func lookupTlsReportingDomain( lookupTlsReportingDomainOptions: LookupTlsReportingDomainOptions) -> Promise<LookupTlsReportingDomainResults> {
        let deferred = Promise<LookupTlsReportingDomainResults>.pending()
        lookupTlsReportingDomainWithRequestBuilder(lookupTlsReportingDomainOptions: lookupTlsReportingDomainOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Lookup a TLS reporting domain policy
     - POST /tools/lookup-tls-reporting-domain
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter lookupTlsReportingDomainOptions: (body)  
     - returns: RequestBuilder<LookupTlsReportingDomainResults> 
     */
    open class func lookupTlsReportingDomainWithRequestBuilder(lookupTlsReportingDomainOptions: LookupTlsReportingDomainOptions) -> RequestBuilder<LookupTlsReportingDomainResults> {
        let localVariablePath = "/tools/lookup-tls-reporting-domain"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: lookupTlsReportingDomainOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LookupTlsReportingDomainResults>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
