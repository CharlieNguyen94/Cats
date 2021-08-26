//
//  BreedListView.swift
//  Cats
//
//  Created by Charlie Nguyen on 25/08/2021.
//

import SwiftUI

struct BreedListView: View {
    
    let breeds: [Breed]
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(breeds) { breed in
                    NavigationLink {
                        BreedDetailView(breed: breed)
                    } label: {
                        BreedRow(breed: breed)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Find your perfect cat")
            
        }
        
    }
}

struct BreedListView_Previews: PreviewProvider {
    static var previews: some View {
        BreedListView(breeds: BreedFetcher.successState().breeds)
    }
}
