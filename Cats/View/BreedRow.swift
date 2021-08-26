//
//  BreedRow.swift
//  Cats
//
//  Created by Charlie Nguyen on 25/08/2021.
//

import SwiftUI


struct BreedRow: View {
    
    let breed: Breed
    
    var body: some View {
        HStack {
            
            if breed.image?.url != nil {
                AsyncImage(url: URL(string: breed.image!.url!)) { phase in
                    if let image = phase.image
                }
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(breed.name)
                    .font(.headline)
                Text(breed.temperament)
            }
        }
    }
}

struct BreedRow_Previews: PreviewProvider {
    static var previews: some View {
        BreedRow(breed: Breed.example1())
            .previewLayout(.fixed(width: 300, height: 200))
    }
}
