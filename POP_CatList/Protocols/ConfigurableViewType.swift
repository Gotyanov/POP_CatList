//
//  ConfigurableView.swift
//  POP_CatList
//
//  Created by Aleksey Gotyanov on 10.05.2018.
//  Copyright © 2018 Aleksey Gotyanov. All rights reserved.
//

protocol ConfigurableViewType {
    associatedtype Model
    func configure(using model: Model)
}
