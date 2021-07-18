//
//  TabView.swift
//  AdaptiveGrid
//
//  Created by Yovi Eka Putra on 18/07/21.
//

import SwiftUI

struct TabView: View {
    @Binding var layoutSelected: LayoutType
    
    var body: some View {
        Picker("Layout", selection: $layoutSelected) {
            ForEach(LayoutType.allCases, id: \.self) { type in
                switch type {
                case .single:
                    Image(systemName: "list.dash")
                case .double:
                    Image(systemName: "square.grid.2x2")
                case .adaptive:
                    Image(systemName: "square.grid.3x3")
                }
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(layoutSelected: .constant(.single))
            .previewLayout(.sizeThatFits)
    }
}
