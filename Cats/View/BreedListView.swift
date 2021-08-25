//
//  BreedListView.swift
//  Cats
//
//  Created by Charlie Nguyen on 25/08/2021.
//

import SwiftUI

struct BreedListView: View {
    
    let breeds: [Breed]
    
    var body: some View {
        List {
            ForEach(breeds) { breed in
                Text(breed.name)
            }
        }
    }
}

struct BreedListView_Previews: PreviewProvider {
    static var previews: some View {
        BreedListView(breeds: BreedFetcher.successState().breeds)
    }
}
