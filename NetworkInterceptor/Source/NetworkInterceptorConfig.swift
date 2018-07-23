//
//  NetworkInterceptorConfig.swift
//  NetworkInterceptor
//
//  Created by Kenneth Poon on 10/7/18.
//  Copyright © 2018 Kenneth Poon. All rights reserved.
//

import Foundation

public struct NetworkInterceptorConfig {
    var registrables: [RequestLoggerRegistrable]
    
    public init(registrables: [RequestLoggerRegistrable]){
        self.registrables = registrables
    }
}
