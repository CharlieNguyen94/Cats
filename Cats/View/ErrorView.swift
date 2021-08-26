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
        VStack {
            
            Text("😿")
                .font(.system(size: 30))
            
            Text(breedFetcher.errorMessage ?? "")
                .padding(5)
            
            Button {
                breedFetcher.fetchAllBreeds()
            } label: {
                Text("Try again")
            }

            
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(breedFetcher: BreedFetcher())
    }
}
