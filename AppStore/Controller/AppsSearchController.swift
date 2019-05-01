//
//  AppsSearchController.swift
//  AppStore
//
//  Created by Nhan Nguyen on 4/29/19.
//  Copyright © 2019 Nhan Nguyen. All rights reserved.
//

import UIKit

class AppsSearchController: UICollectionViewController {
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
    }
}
