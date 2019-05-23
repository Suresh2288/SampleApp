//
//  RootViewModel.swift
//  SampleApp
//
//  Created by John Raja on 22/05/19.
//  Copyright © 2019 John Raja. All rights reserved.
//

import Foundation
import ObjectMapper

class RootViewModel {
    
    /*
    func InsertNtucUserNric(_ data:ProfileRequest, completed: @escaping completionHandler) {
        
        APIManager.sharedInstance.sendJSONRequest(method: .post, path: APIManager.Router.GetMasterData(), parameters: data.toJSON()) { (apiResponseHandler, error) -> Void in
            print("data.toJSON():\(data.toJSON())")
            print("apiResponseHandler.jsonObject:\(String(describing: apiResponseHandler.jsonObject))")
            completed(apiResponseHandler, error)
        }
    }
    
    func getCurrentSubscription(completed: @escaping completionHandler) {
        
        if let profile = ProfileData.getProfileObj() {
            
            let requestParam = GetSubscriptionRequest(email: profile.email, accessToken: profile.accessToken, countryCode: profile.CountryRegistered!).toJSON()
            
            APIManager.sharedInstance.sendJSONRequest(method: .post, path: APIManager.Router.GetMasterData(), parameters: requestParam) { (apiResponseHandler, error) -> Void in
                
                completed(apiResponseHandler, error)
            }
        }
    }
    */
    
    func getNewsList(completed: @escaping completionHandler) {
        
        APIManager.sharedInstance.sendJSONRequest(method: .get, path: APIManager.Router.GetTopNews(), parameters: nil) { (apiResponseHandler, error) -> Void in
            
            //print("data.toJSON():\(data.toJSON())")
            print("apiResponseHandler.jsonObject:\(String(describing: apiResponseHandler.jsonObject))")
            
            completed(apiResponseHandler, error)
        }
    }
    
    /*
    func getCities(_ data:CityDataRequest, completed: @escaping completionHandler) {
        
        APIManager.sharedInstance.sendJSONRequest(method: .post, path: APIManager.Router.GetCities(), parameters: data.toJSON()) { (apiResponseHandler, error) -> Void in
            
            completed(apiResponseHandler, error)
        }
    }
 */
}


