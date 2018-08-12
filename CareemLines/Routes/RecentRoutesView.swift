//
//  RecentRoutesView.swift
//  CareemLines
//
//  Created by Ahmed Abdel Meguid on 8/12/18.
//  Copyright © 2018 Ahmed Abdel Meguid. All rights reserved.
//

import UIKit

private let reuseIdentifier = "RecentRoutes"

class RecentRoutesView: UICollectionViewController {
    
    private var listViewModels: [RouteItemViewModel]? {
        didSet {
            self.collectionView?.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listViewModels?.count ?? 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! RecentRoutesCell
        cell.configure(withViewModel: listViewModels![indexPath.row])
        return cell
    }
}
