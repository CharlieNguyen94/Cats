//
//  APIMockService.swift
//  APIMockService
//
//  Created by Charlie Nguyen on 26/08/2021.
//

import Foundation

struct APIMockService: APIServiceProtocol {
    
    var result: Result<[Breed], APIError>
    
    func fetchBreeds(url: URL?, completion: @escaping (Result<[Breed], APIError>) -> Void) {
        completion(result)
    }
    
    
}
