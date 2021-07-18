//
//  ItemModel.swift
//  AdaptiveGrid
//
//  Created by Yovi Eka Putra on 18/07/21.
//

import Foundation

struct ItemModel: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let image: String
}

extension ItemModel {
    static func mock() -> [ItemModel] {
        (0..<100)
            .map {
                ItemModel(
                    title: "Title: #\($0)",
                    subtitle: "Subtitle: $\($0)",
                    image: "image_\(Int.random(in: 1...15))"
                )
            }
    }
}
