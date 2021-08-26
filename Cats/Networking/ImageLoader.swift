//
//  ImageLoader.swift
//  ImageLoader
//
//  Created by Charlie Nguyen on 26/08/2021.
//

import Foundation
import UIKit
import SwiftUI

class ImageLoader: ObservableObject {
    
    let url: String?
    
    @Published var image: UIImage? = nil
    @Published var errorMessage: String? = nil
    @Published var isLoading: Bool = false
    
    init(url: String?) {
        self.url = url
    }
    
    func fetch() {
        
        guard image == nil && !isLoading else {
            return
        }
        
        guard let url = url, let fetchURL = URL(string: url) else {
            errorMessage = APIError.badURL.localizedDescription
            return
        }
        
        isLoading = true
        errorMessage = nil
        
        let task = URLSession.shared.dataTask(with: fetchURL) { [weak self] (data, response, error) in
            
            DispatchQueue.main.async {
                self?.isLoading = false
                if let error = error {
                    self?.errorMessage = error.localizedDescription
                } else if let response = response as? HTTPURLResponse, !(200...299).contains(response.statusCode) {
                    self?.errorMessage = APIError.badResponse(statusCode: response.statusCode).localizedDescription
                } else if let data = data, let image = UIImage(data: data) {
                    self?.image = image
                } else {
                    self?.errorMessage = APIError.unknown.localizedDescription
                }
            }
        }
        task.resume()
    }
    
}
