//
//  Enviroment.swift
//  PhaseEx
//
//  Created by dev dfcc on 2023/05/04.
//

import Foundation

enum Environment {
    enum Keys {
        enum Plist {
            static let rootURL = "ROOT_URL"
            static let apiKey = "API_KEY"
        }
    }
    
    private static let infoDictionary: [String: Any] = {
        guard let dictionary = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dictionary
    }()
    
    // MARK: - Plist values
       static let rootURL: URL = {
           guard let rootURLstring = infoDictionary[Keys.Plist.rootURL] as? String else {
               fatalError("Root URL not set in plist for this environment")
           }
           guard let url = URL(string: rootURLstring) else {
               fatalError("Root URL is invalid")
           }
           return url
       }()

       static let apiKey: String = {
           guard let apiKey = infoDictionary[Keys.Plist.apiKey] as? String else {
               fatalError("API Key not set in plist for this environment")
           }
           return apiKey
       }()
}
