//
//  DataViewModel.swift
//  CognizantTest
//
//  Created by Athlosn90 on 13/03/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class DataViewModel {
    
    
    let name: String
    let size: String
    let moons: String
    let image: String
    let category: String
    let year: String
        
    let dataService = Service()
    
    init(data: Planets) {
        self.name = data.Name
        self.size = data.Size
        self.moons = data.Moons
        self.image = data.Image
        self.category = data.Category
        self.year = data.Year
    }
    
    func fetchData(completion: @escaping ([Planets]) -> ()) {
        let dataService = Service()
            dataService.getData() { (planetsData, success) in
                       
                if success {
                    if let data = planetsData {
                        completion(data)
                    }
                }
            }
    }
    
    func processImages(imageString: String, completion: @escaping (UIImage) -> ()) -> Void {
        
        let imageProcessor = ImageProcessor()
        
        imageProcessor.processImage(image: imageString) { (image) in
            
            completion(image!)
        }
        
    }

}
