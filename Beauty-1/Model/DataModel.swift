//
//  Data.swift
//  Beauty-1
//
//  Created by Nicole on 10/9/2021.
//

import Foundation

let menuList = ["Masks", "Face Cream" ,"Toner" ,"To-Buy List", "Settings"]

struct ProductType: Hashable{
    let M = "Mask"
    let FC = "Face Cream"
    let T = "Toner"
}

struct ProductStruct{
    let productName: String?
    let productCompany: String?
}




