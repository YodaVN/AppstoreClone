//
//  VerticalStackView.swift
//  AppStore
//
//  Created by Nhan Nguyen on 5/6/19.
//  Copyright © 2019 Nhan Nguyen. All rights reserved.
//

import Foundation
import UIKit

class VerticalStackView: UIStackView {
    init(arrangedSubviews: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        
        arrangedSubviews.forEach({addArrangedSubview($0)})
        self.spacing = spacing
        self.axis = .vertical
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
