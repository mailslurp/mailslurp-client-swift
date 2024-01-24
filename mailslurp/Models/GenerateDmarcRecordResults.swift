//
// GenerateDmarcRecordResults.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class GenerateDmarcRecordResults: NSObject, Codable, JSONEncodable {

    public enum ModelType: String, Codable, CaseIterable {
        case a = "A"
        case ns = "NS"
        case md = "MD"
        case mf = "MF"
        case cname = "CNAME"
        case soa = "SOA"
        case mb = "MB"
        case mg = "MG"
        case mr = "MR"
        case null = "NULL"
        case wks = "WKS"
        case ptr = "PTR"
        case hinfo = "HINFO"
        case minfo = "MINFO"
        case mx = "MX"
        case txt = "TXT"
        case rp = "RP"
        case afsdb = "AFSDB"
        case x25 = "X25"
        case isdn = "ISDN"
        case rt = "RT"
        case nsap = "NSAP"
        case nsapPtr = "NSAP_PTR"
        case sig = "SIG"
        case key = "KEY"
        case px = "PX"
        case gpos = "GPOS"
        case aaaa = "AAAA"
        case loc = "LOC"
        case nxt = "NXT"
        case eid = "EID"
        case nimloc = "NIMLOC"
        case srv = "SRV"
        case atma = "ATMA"
        case naptr = "NAPTR"
        case kx = "KX"
        case cert = "CERT"
        case a6 = "A6"
        case dname = "DNAME"
        case sink = "SINK"
        case opt = "OPT"
        case apl = "APL"
        case ds = "DS"
        case sshfp = "SSHFP"
        case ipseckey = "IPSECKEY"
        case rrsig = "RRSIG"
        case nsec = "NSEC"
        case dnskey = "DNSKEY"
        case dhcid = "DHCID"
        case nsec3 = "NSEC3"
        case nsec3param = "NSEC3PARAM"
        case tlsa = "TLSA"
        case smimea = "SMIMEA"
        case hip = "HIP"
        case ninfo = "NINFO"
        case rkey = "RKEY"
        case talink = "TALINK"
        case cds = "CDS"
        case cdnskey = "CDNSKEY"
        case openpgpkey = "OPENPGPKEY"
        case csync = "CSYNC"
        case zonemd = "ZONEMD"
        case svcb = "SVCB"
        case https = "HTTPS"
        case spf = "SPF"
        case uinfo = "UINFO"
        case uid = "UID"
        case gid = "GID"
        case unspec = "UNSPEC"
        case nid = "NID"
        case l32 = "L32"
        case l64 = "L64"
        case lp = "LP"
        case eui48 = "EUI48"
        case eui64 = "EUI64"
        case tkey = "TKEY"
        case tsig = "TSIG"
        case ixfr = "IXFR"
        case axfr = "AXFR"
        case mailb = "MAILB"
        case maila = "MAILA"
        case any = "ANY"
        case uri = "URI"
        case caa = "CAA"
        case avc = "AVC"
        case doa = "DOA"
        case amtrelay = "AMTRELAY"
        case ta = "TA"
        case dlv = "DLV"
    }
    public var name: String
    /** Domain Name Server Record Types */
    public var type: ModelType
    public var ttl: Int
    public var value: String

    public init(name: String, type: ModelType, ttl: Int, value: String) {
        self.name = name
        self.type = type
        self.ttl = ttl
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case type
        case ttl
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encode(ttl, forKey: .ttl)
        try container.encode(value, forKey: .value)
    }
}

