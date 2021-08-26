//
//  APIServiceProtocol.swift
//  APIServiceProtocol
//
//  Created by Charlie Nguyen on 26/08/2021.
//

import Foundation

protocol APIServiceProtocol {
    func fetchBreeds(url: URL?, completion: @escaping(Result<[Breed], APIError>) -> Void)
}
