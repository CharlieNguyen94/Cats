//
//  LoadingView.swift
//  Cats
//
//  Created by Charlie Nguyen on 25/08/2021.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
        Text("😺")
            .font(.system(size: 40))
        ProgressView()
            Text("Loading cats...")
                .foregroundColor(.gray)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
