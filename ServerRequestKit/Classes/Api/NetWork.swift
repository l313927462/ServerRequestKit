//
//  NetWork.swift
//  ServerRequestKit
//
//  Created by Magus on 2022/11/17.
//

import UIKit
import Alamofire
class NetWork: NSObject {
    
    static func invoke<T: BaseResponseModel>(_ request: BaseRequestModel, responseType:T.Type, callBack:@escaping((T.Type)-> Void)) {
        AF.request(request.baseUrl + request.path,
                   method: .post,
                   parameters: request.toJSON()).response { responseData in
            
            
        }
        
    }

}
