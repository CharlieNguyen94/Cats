//
//  BreedFetcher.swift
//  Cats
//
//  Created by Charlie Nguyen on 25/08/2021.
//

import Foundation

class BreedFetcher: ObservableObject {
    
    @Published var breeds = [Breed]()
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    init() {
        fetchAllBreeds()
    }
    
    func fetchAllBreeds() {
        
        isLoading = true
        
        // Show error if you cannot create url
        let url = URL(string: "https://api.thecatapi.com/v1/breeds")!
        
        let task = URLSession.shared.dataTask(with: url) { [unowned self] data, response, error in
            
            if let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) {
                
            }
            
            DispatchQueue.main.async {
                self.isLoading = false
            }
    
            let decoder = JSONDecoder()
            if let data = data {
                do {
                    let breeds = try decoder.decode([Breed].self, from: data)
                    print(breeds)
                    DispatchQueue.main.async {
                        self.breeds = breeds
                    }
                    
                } catch {
                    // Show error
                    print(error)
                }
            }
        }
        task.resume()
    }
}
