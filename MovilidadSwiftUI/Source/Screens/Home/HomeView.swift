//
//  HomeView.swift
//  MovilidadSwiftUI
//
//  Created by Diego Quimbo on 5/1/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text(L10n.Home.title)
                .font(.system(size: 32, weight: .medium, design: .default))
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
