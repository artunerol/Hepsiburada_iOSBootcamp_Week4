//
//  APIHandler.swift
//  Week4
//
//  Created by Artun Erol on 18.10.2021.
//

import UIKit

class APIHandler {
    
    private let decoder = JSONDecoder()
    
    public static let shared = APIHandler()
    
    //MARK: -
    
    private func decodeJSON(from data: Data) {
        do {
            try decoder.decode([ImageJSON].self, from: data)
        }
        catch {
            
        }
    }
    
    //MARK: -
    
    public func getDataFromURL() {
        
        guard let stringToURL = URL(string: "https://picsum.photos/v2/list") else { return } // Creating URL FRom string.
        let urlSession = URLSession(configuration: .default) // Creating URLSession
        let urlSessionDataTask = urlSession.dataTask(with: stringToURL) { data, URLResponse, error in
            
            if error == nil {
                guard let unwrappedData = data else { return }
                self.decodeJSON(from: unwrappedData)
                print(unwrappedData)
            }
            else {
                print("Error in getting data from URL")
            }
            
        }
        urlSessionDataTask.resume() // Resuming the DataTask
    }
    
}
