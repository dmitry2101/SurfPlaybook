//
//  CommonButton+Styles.swift
//  SurfPlaybook
//
//  Created by Александр Чаусов on 15.04.2021.
//  Copyright © 2021 Surf. All rights reserved.
//

import UIKit

extension CommonButton {

    func apply(style: CommonButtonStyleType) {
        style.style.apply(for: self)
    }

}

enum CommonButtonStyleType {
    case textActive
    case textSecond

    var style: CommonButtonStyle {
        switch self {
        case .textActive:
            return .init(titleFont: FontFamily.SFProText.medium.font(size: 17),
                         titleColor: Colors.Main.active,
                         highlightedTitleColor: Colors.Main.active.withAlphaComponent(0.5),
                         backgroundColor: .clear,
                         highlightedBackgroundColor: .clear,
                         contentInsets: .init(top: 0, left: 16, bottom: 0, right: 16))
        case .textSecond:
            return .init(titleFont: FontFamily.SFProText.regular.font(size: 17),
                         titleColor: Colors.Main.gray,
                         highlightedTitleColor: Colors.Main.gray.withAlphaComponent(0.5),
                         backgroundColor: .clear,
                         highlightedBackgroundColor: .clear,
                         contentInsets: .init(top: 0, left: 16, bottom: 0, right: 16))
        }
    }
}
