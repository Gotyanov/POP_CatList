//
//  TestCatRepository.swift
//  POP_CatList
//
//  Created by Aleksey Gotyanov on 10.05.2018.
//  Copyright © 2018 Aleksey Gotyanov. All rights reserved.
//

import Foundation

class TestCatRepository: CatRepository {
    func getCats() -> [Cat] {
        return [
            Cat(name: "Barsik", photo: nil),
            Cat(name: "Pushok", photo: nil),
            Cat(name: "Vasiliy", photo: nil),
            Cat(name: "Boris", photo: nil),
            Cat(name: "Ryizhik", photo: nil)
        ]
    }
}

extension TestCatRepository: RepositoryType { }
