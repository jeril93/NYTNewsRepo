//
//  NewsRequest.swift
//  NYTimesTop
//
//  Created by Jeril V Raj on 13/06/22.
//

import Foundation


class NewsRequest {

    var period: String = "7"

    init(period: String) {
        self.period = period
    }
    
    func getUrl() -> String {
        let baseURL = "https://api.nytimes.com/svc"
        let period = self.period
        let apiMostPopularNews = "/mostpopular/v2/viewed/\(period).json"
        let apiKey = "OftnDgpcKRGBaF5cAH7UdV4kfHJRMPQX"
        let newsUrl = baseURL + apiMostPopularNews + "?api-key=\(apiKey)"
        return newsUrl
    }
    
}
