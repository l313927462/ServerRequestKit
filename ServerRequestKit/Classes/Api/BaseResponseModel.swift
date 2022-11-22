//
//  BaseResponseModel.swift
//  ServerRequestKit
//
//  Created by Magus on 2022/11/17.
//

import UIKit
import HandyJSON

class BaseResponseModel: HandyJSON {
    var responseCode: String = ""
    var resPonseDesc: String = ""
    func mapping(mapper: HelpingMapper) {
    }

    required init() {
        
    }
}





