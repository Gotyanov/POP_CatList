//
//  CatRepository.swift
//  POP_CatList
//
//  Created by Aleksey Gotyanov on 10.05.2018.
//  Copyright © 2018 Aleksey Gotyanov. All rights reserved.
//

import Foundation

protocol CatRepository {
    func getCats() -> [Cat]
}

extension CatRepository {
    func getItems() -> [Cat] {
        return getCats()
    }
}
