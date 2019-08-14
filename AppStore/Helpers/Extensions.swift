//
//  Extensions.swift
//  AppStore
//
//  Created by Nhan Nguyen on 8/13/19.
//  Copyright © 2019 Nhan Nguyen. All rights reserved.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
    }
}

extension UIImageView {
    convenience init(cornerRadius: CGFloat) {
        self.init(image: nil)
        self.layer.cornerRadius = cornerRadius
        self.contentMode = .scaleToFill
        self.clipsToBounds = true
    }
}

extension UIButton {
    convenience init(title: String) {
        self.init(type: .system)
        self.setTitle(title, for: .normal)
    }
}
