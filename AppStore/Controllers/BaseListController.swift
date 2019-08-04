//
//  BaseListController.swift
//  AppStore
//
//  Created by Nhan Nguyen on 8/3/19.
//  Copyright © 2019 Nhan Nguyen. All rights reserved.
//

import UIKit

class BaseListController: UICollectionViewController {
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
