//
//  RecentRoutesCollectionCell.swift
//  CareemLines
//
//  Created by Ahmed Abdel Meguid on 8/12/18.
//  Copyright © 2018 Ahmed Abdel Meguid. All rights reserved.
//

import UIKit

class RecentRoutesCell: UICollectionViewCell {
    
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var startStopLabel: UILabel!
    @IBOutlet private weak var endStopLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!

    var viewModel: RouteItemViewModel? {
        didSet {
            dateLabel.text = viewModel?.dateString
            startStopLabel.text = viewModel?.startStop
            endStopLabel.text = viewModel?.endStop
            priceLabel.text = String(describing: viewModel?.price)
        }
    }
}
