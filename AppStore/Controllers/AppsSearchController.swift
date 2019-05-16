//
//  AppsSearchController.swift
//  AppStore
//
//  Created by Nhan Nguyen on 4/29/19.
//  Copyright © 2019 Nhan Nguyen. All rights reserved.
//

import UIKit

class AppsSearchController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    private let cellId = "id123"
    
    struct SearchResult: Decodable {
        let resultCount: Int
        let results: [Result]
    }
    
    struct Result: Decodable {
        let trackName: String
        let primaryGenreName: String
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        collectionView.register(SearchResultCell.self, forCellWithReuseIdentifier: cellId)
        
        fetchItunesApps()
    }
    
    fileprivate func fetchItunesApps() {
        let urlString = "https://itunes.apple.com/search?term=instagram&entity=software"
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                print("Failed to fetch apps:", err)
                return
            }
            
            guard let data = data else {
                return
            }
            
            JSONDecoder().decode(SearchResult.self, from: data)
            
            
            
        }.resume()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SearchResultCell
        cell.nameLabel.text = "HERE IS MY APP"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return .init(width: self.view.frame.width, height: 350)
    }
}
