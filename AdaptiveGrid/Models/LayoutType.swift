//
//  LayoutType.swift
//  AdaptiveGrid
//
//  Created by Yovi Eka Putra on 18/07/21.
//

import SwiftUI

enum LayoutType: CaseIterable {
    case single
    case double
    case adaptive
}

extension LayoutType {
    var columns: [GridItem] {
        switch self {
        case .single:
            return [GridItem(.flexible(), spacing: 0)]
        case .double:
            return [
                GridItem(.flexible(), spacing: 2),
                GridItem(.flexible(), spacing: 2)
            ]
        case .adaptive:
            return [GridItem(.adaptive(minimum: 50), spacing: 2)]
        }
    }
}
