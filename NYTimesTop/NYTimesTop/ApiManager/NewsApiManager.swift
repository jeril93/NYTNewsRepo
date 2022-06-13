//
//  NewsApiManager.swift
//  NYTimesTop
//
//  Created by Jeril V Raj on 13/06/22.
//

import Foundation
import UIKit
import Alamofire



class NewsApiManager: NSObject {
    
    var newsRequest: NewsRequest
    
    init(_ newsRequest: NewsRequest) {
        self.newsRequest = newsRequest
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getNewsAPI(callBack: @escaping((Bool, MostPopularNewsResponseModel?, String) -> Void)) {
        let newsUrl = newsRequest.getUrl()
        AF.request(newsUrl).responseJSON { [self] response in
            switch response.result {
            case .success(let json):
                print(json)
                callBack(true, saveNewsResponse(dataDict: json as! [String : Any]),  StringConstants.General.successMsg)
            case .failure(let error):
                print(error)
                callBack(false, nil, StringConstants.Error.errorMessage)
            }
        }
    }
    
    
    static func getImage(urlString : String, callBack: @escaping (UIImage?, Error?) -> Void) {
        
        AF.request(urlString).responseData { response in
            
            if let data = response.data {
                callBack(UIImage(data: data), nil)
            } else {
                callBack(nil, response.error)
            }
        }
    }
    
}

extension NewsApiManager {
    
    func saveNewsResponse(dataDict: [String: Any]) -> MostPopularNewsResponseModel? {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: dataDict)
            let responseDic = try JSONDecoder().decode(MostPopularNewsResponseModel.self, from: jsonData)
            return responseDic
        } catch {
            print("failed", error)
            return nil
        }
    }
}

