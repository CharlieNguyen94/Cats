//
//  BreedRow.swift
//  Cats
//
//  Created by Charlie Nguyen on 25/08/2021.
//

import SwiftUI
import URLImage

struct BreedRow: View {
    
    let breed: Breed
    
    var body: some View {
        HStack {
            
            if breed.image?.url != nil {
                
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
