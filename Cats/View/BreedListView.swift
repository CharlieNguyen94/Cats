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
    
    var filteredBreeds: [Breed] {
        if searchText.count == 0 {
            return breeds
        } else {
            return breeds.filter { $0.name.contains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredBreeds) { breed in
                    NavigationLink {
                        BreedDetailView(breed: breed)
                    } label: {
                        BreedRow(breed: breed)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Find your perfect cat")
            .searchable(text: $searchText)
            
        }
        .onAppear {
            URLCache.shared.memoryCapacity = 1024 * 1024 * 512
        }
    }
}

struct BreedListView_Previews: PreviewProvider {
    static var previews: some View {
        BreedListView(breeds: BreedFetcher.successState().breeds)
    }
}
