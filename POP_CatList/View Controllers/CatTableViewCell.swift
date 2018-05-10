//
//  CatTableViewCell.swift
//  POP_CatList
//
//  Created by Aleksey Gotyanov on 10.05.2018.
//  Copyright © 2018 Aleksey Gotyanov. All rights reserved.
//

import UIKit

class CatTableViewCell: UITableViewCell {
    @IBOutlet var catNameLabel: UILabel!
    @IBOutlet var catImageView: UIImageView!
}

extension CatTableViewCell: CatCellType {
    func setName(_ name: String) {
        catNameLabel.text = name
    }

    func setImage(_ image: UIImage?) {
        catImageView.image = image
    }
}

extension CatTableViewCell: ConfigurableViewType { }
