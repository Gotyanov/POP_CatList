//
//  ListViewType.swift
//  POP_CatList
//
//  Created by Aleksey Gotyanov on 10.05.2018.
//  Copyright © 2018 Aleksey Gotyanov. All rights reserved.
//

import Foundation

protocol ListViewType: class {
    associatedtype CellView
    associatedtype SectionIndex
    associatedtype ItemIndex

    func refresh(section: SectionIndex, count: Int)
    var updateItemCallback: (CellView, ItemIndex) -> () { get set }
}

extension ListViewType where SectionIndex == (), ItemIndex == Int {
    func setup<Repository: RepositoryType>(repository: Repository)
        where CellView: ConfigurableViewType, CellView.Model == Repository.Model {
            
            let items = repository.getItems()
            refresh(section: (), count: items.count)
            updateItemCallback = { cell, index in
                let item = items[index]
                cell.configure(using: item)
            }
    }
}
