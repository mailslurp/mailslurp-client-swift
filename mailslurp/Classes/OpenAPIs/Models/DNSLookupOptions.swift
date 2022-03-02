//
// DNSLookupOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Options for DNS query.  */
@objc public class DNSLookupOptions: NSObject, Codable {

    public enum RecordTypes: String, Codable, CaseIterable {
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
    /** List of record types you wish to query such as MX, DNS, TXT, NS, A etc. */
    public var hostname: String
    /** List of record types you wish to query such as MX, DNS, TXT, NS, A etc. */
    public var recordTypes: [RecordTypes]
    /** Optionally control whether to omit the final dot in full DNS name values. */
    public var omitFinalDNSDot: Bool

    public init(hostname: String, recordTypes: [RecordTypes], omitFinalDNSDot: Bool) {
        self.hostname = hostname
        self.recordTypes = recordTypes
        self.omitFinalDNSDot = omitFinalDNSDot
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hostname
        case recordTypes
        case omitFinalDNSDot
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hostname, forKey: .hostname)
        try container.encode(recordTypes, forKey: .recordTypes)
        try container.encode(omitFinalDNSDot, forKey: .omitFinalDNSDot)
    }



}
