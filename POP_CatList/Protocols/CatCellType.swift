//
//  CatCellType.swift
//  POP_CatList
//
//  Created by Aleksey Gotyanov on 10.05.2018.
//  Copyright © 2018 Aleksey Gotyanov. All rights reserved.
//

import UIKit

protocol CatCellType {
    func setName(_: String)
    func setImage(_: UIImage?)
}

extension CatCellType where Self: ConfigurableViewType {
    func configure(using model: Cat) {
        setName(model.name)
        setImage(model.photo)
    }
}
