//
//  ContentView.swift
//  AdaptiveGrid
//
//  Created by Yovi Eka Putra on 18/07/21.
//

import SwiftUI

struct ContentView: View {
    private let items = ItemModel.mock()
    
    @State private var layoutSelected = LayoutType.single
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                TabView(layoutSelected: $layoutSelected)
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: layoutSelected.columns, spacing: 2) {
                        ForEach(items) { item in
                            switch layoutSelected {
                            case .single:
                                SingleRow(item: item)
                            default:
                                Image(item.image)
                                    .resizable()
                                    .aspectRatio(1/1, contentMode: .fill)
                            }
                        }
                    }.animation(.default)
                }
            }
            .navigationTitle("Adaptive Grid Layout")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
