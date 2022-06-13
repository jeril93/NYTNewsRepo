//
//  MostPopularVM.swift
//  NYTimesTop
//
//  Created by Jeril V Raj on 13/06/22.
//

import Foundation

protocol GetMostPopularNews {
    func didGetNews(isSuccess: Bool, message: String?)
}

class MostPopularVM {
    
    var mostPopularNewsModel: [MostPopularNewsModel] = []

    var delegate: GetMostPopularNews!

    
    func getNews() {
        let period = "7"
        NewsApiManager(NewsRequest(period: period)).getNewsAPI() { success , model, message in
            if success {
                self.mostPopularNewsModel = model?.results ?? []
                self.delegate.didGetNews(isSuccess: success, message: nil)
            } else {
                self.delegate.didGetNews(isSuccess: success, message: "failed")
            }
        }
    }
}
