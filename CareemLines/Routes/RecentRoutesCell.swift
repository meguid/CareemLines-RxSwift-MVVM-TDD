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

    func configure(withDate dateString: String, start startStop: String, end endStop: String, price: Int) {
        dateLabel.text = dateString
        startStopLabel.text = startStop
        endStopLabel.text = endStop
        priceLabel.text = "\(price)"
    }
}

extension RecentRoutesCell {
    func configure(withViewModel viewModel:RouteItemViewModel) {
        configure(withDate: viewModel.dateString, start: viewModel.startStop, end: viewModel.endStop, price: viewModel.price)
    }
}
