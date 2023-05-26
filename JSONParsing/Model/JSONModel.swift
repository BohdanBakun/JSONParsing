//
//  JSONModel.swift
//  JSONParsing
//
//  Created by Богдан Бакун on 26.05.2023.
//

//MARK: Task1
import Foundation

struct Company: Codable {
    let count: Int
    let companyDescription: String
    let listOfData: [Device]
}

struct Device: Codable {
    let name: String
    let modelNumber: String
    let countries: [String]
    let priceInfo: PriceInfo
    let year: Int
}

struct PriceInfo: Codable {
    let regions: [RegionPrice]
}

struct RegionPrice: Codable {
    let name: String
    let price: Int
}
