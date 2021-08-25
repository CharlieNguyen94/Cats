//
//  ErrorView.swift
//  Cats
//
//  Created by Charlie Nguyen on 25/08/2021.
//

import SwiftUI

struct ErrorView: View {
    
    @ObservedObject var breedFetcher: BreedFetcher
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(breedFetcher: BreedFetcher())
    }
}
