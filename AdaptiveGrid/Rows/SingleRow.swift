//
//  SingleRow.swift
//  AdaptiveGrid
//
//  Created by Yovi Eka Putra on 18/07/21.
//

import SwiftUI

struct SingleRow: View {
    let item: ItemModel
    
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipped()
                    .cornerRadius(3.0)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text(item.title)
                        .font(.headline)
                        .foregroundColor(.black.opacity(0.6))
                    Text(item.subtitle)
                        .font(.subheadline)
                        .foregroundColor(.black.opacity(0.3))
                }
                
                Spacer()
            }
            
            Divider()
        }.padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 8))
    }
}

struct SingleRow_Previews: PreviewProvider {
    static var previews: some View {
        SingleRow(
            item: ItemModel(
                title: "Title",
                subtitle: "Subtitle",
                image: "image_1"
            )
        ).previewLayout(.sizeThatFits)
    }
}
