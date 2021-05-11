//
//  URLRequestFactory.swift
//  NetworkInterceptor
//
//  Created by Kenneth Poon on 7/10/18.
//  Copyright © 2018 Kenneth Poon. All rights reserved.
//

import Foundation
import URLRequest_cURL

class URLRequestFactory {

    public func createURLRequest(originalUrlRequest: URLRequest, url domainUrl: URL) -> URLRequest {
        guard let originalUrl = originalUrlRequest.url else {
            return originalUrlRequest
        }
        
        let urlString = originalUrl.absoluteString.replacingOccurrences(of: "\(originalUrl.scheme!)://\(originalUrl.host!)", with: domainUrl.absoluteString)
        var redirectedRequest = URLRequest(url: URL(string: urlString)!)
        if let _ = originalUrlRequest.httpBodyStream,
            let httpBodyStreamData = originalUrlRequest.getHttpBodyStreamData() {
            redirectedRequest.httpBody = httpBodyStreamData
        } else {
            redirectedRequest.httpBody = originalUrlRequest.httpBody
        }
        redirectedRequest.httpMethod = originalUrlRequest.httpMethod!
        redirectedRequest.allHTTPHeaderFields = originalUrlRequest.allHTTPHeaderFields
        redirectedRequest.cachePolicy = originalUrlRequest.cachePolicy
        return redirectedRequest
    }
}
