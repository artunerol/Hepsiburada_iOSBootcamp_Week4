//
//  APIHandler.swift
//  Week4
//
//  Created by Artun Erol on 18.10.2021.
//

import UIKit

class APIHandler {
    
    typealias jsonBlock = ([ImageJSON]) -> Void
    
    private let decoder = JSONDecoder()
    
    public lazy var data = [ImageJSON]()
    
    public static let shared = APIHandler()
    
    //MARK: -
    
    private func decodeJSON(from data: Data) -> [ImageJSON] {
        do {
            let decodedData = try decoder.decode([ImageJSON].self, from: data)
            return decodedData
        }
        catch {
            
        }
        return [ImageJSON]()
    }
    
    //MARK: -
    
    public func getDataFromURL(completion: @escaping jsonBlock) {
        
        guard let stringToURL = URL(string: "https://picsum.photos/v2/list") else { return } // Creating URL FRom string.
        let urlSession = URLSession(configuration: .default) // Creating URLSession
        let urlSessionDataTask = urlSession.dataTask(with: stringToURL) { data, URLResponse, error in
            
            if error == nil {
                guard let unwrappedData = data else { return }
                let decodedData = self.decodeJSON(from: unwrappedData)
                completion(decodedData)
            }
            else {
                print("Error in getting data from URL")
            }
            
        }
        urlSessionDataTask.resume() // Resuming the DataTask
    }
    
}
