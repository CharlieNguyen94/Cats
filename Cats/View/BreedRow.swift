//
//  BreedRow.swift
//  Cats
//
//  Created by Charlie Nguyen on 25/08/2021.
//

import SwiftUI


struct BreedRow: View {
    
    let breed: Breed
    let imageSize: CGFloat = 100
    
    var body: some View {
        HStack {
            
            if breed.image?.url != nil {
                
                ImageLoadingView(url: breed.image?.url)
                
            } else {
                Color.gray.frame(width: imageSize, height: imageSize)
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
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
