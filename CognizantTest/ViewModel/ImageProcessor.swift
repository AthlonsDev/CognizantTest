//
//  ImageProcessor.swift
//  CognizantTest
//
//  Created by Athlosn90 on 13/03/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class ImageProcessor {
    
    
    func processImage(image: String, completion: @escaping (UIImage?)->()){

        if let url = URL(string: image) {
    
                      URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
    
    
                          if error != nil {
    
                            print(error?.localizedDescription as Any)
    
                          }
                        
                          DispatchQueue.main.async {
                              if let img = data {
                                
                                 let proImage = UIImage(data: img)
                                    completion(proImage)
    
                                }
                              
                          }
    
                }).resume()
            }
    }
    
    
}
