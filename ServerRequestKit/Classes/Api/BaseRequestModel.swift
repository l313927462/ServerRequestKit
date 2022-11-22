//
//  BaseRequestModel.swift
//  Alamofire
//
//  Created by Magus on 2022/11/17.
//

import UIKit
import HandyJSON


public protocol NetWorkRequestProtocol{
    func queryAddress() -> String
    func queryParams() -> [String: Any]?
    func queryHeaders() -> [String: Any]
}

/// 相同业务header一般相同
enum RequestHeaderType: String {
    case normal
    case feedback
    case upload
    func values() -> [String: Any] {
        switch self {
        case .normal:
            return [:]
        case .feedback:
            return [:]
        default:
            return [:]
        }
    }
}

open class BaseRequestModel: HandyJSON {
    var baseUrl: String = ""
    var path: String = ""
    var params: [String: Any] = [:]
    var headerType: RequestHeaderType = .normal
    /// 参数是否加密
    var isEncrypt: Bool = false
    required public init() {}
    public func mapping(mapper: HelpingMapper) {
        mapper >>> self.baseUrl
        mapper >>> self.path
        mapper >>> self.headerType
        mapper >>> self.isEncrypt
        mapper >>> self.params
    }
}


extension BaseRequestModel: NetWorkRequestProtocol {
    @objc public func queryHeaders() -> [String : Any] {
        return self.headerType.values()
    }
    
    @objc public func queryParams() -> [String : Any]? {
        if isEncrypt {
            
        }
        return self.toJSON()
    }
    
    @objc public func queryAddress() -> String {
        return path + baseUrl
    }
}




