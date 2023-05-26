//
//  ViewController.swift
//  JSONParsing
//
//  Created by Богдан Бакун on 26.05.2023.
//

import UIKit

class ViewController: UIViewController {

    let decoder = JSONDecoder()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Task3
        if let filePath = Bundle.main.url(forResource: "RawData", withExtension: "json") {
            do {
                
                let data = try Data(contentsOf: filePath)
                let allData = try decoder.decode(Company.self, from: data)
                
                print("\(allData.companyDescription)\n\(allData.listOfData.first!.modelNumber)\n\(allData.listOfData.first?.countries.last)\n\(allData.listOfData.last?.priceInfo.regions.first?.name)\n\(allData.listOfData.last?.priceInfo.regions.last?.price)")
            } catch {
                print(error)
            }
        }
        
    }


}

