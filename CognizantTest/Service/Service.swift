//
//  Service.swift
//  CognizantTest
//
//  Created by Athlosn90 on 13/03/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation


class Service {

    
    func getData(completion: @escaping ([Planets]?, Bool) -> ()) {
        
        var planetsData = [[String:String]]()
        
        planetsData.append(["Name": "Earth", "Size": "40,075km", "Satellites": "Moon", "Image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/220px-The_Earth_seen_from_Apollo_17.jpg", "Category" : "Planet", "Year": "365 Days"])

        planetsData.append(["Name": "Mars", "Size": "21,344km", "Satellites": "Phobos, Deimos", "Image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/OSIRIS_Mars_true_color.jpg/220px-OSIRIS_Mars_true_color.jpg", "Category" : "Planet", "Year": "687 Days"])
        
        planetsData.append(["Name": "Venus", "Size": "38,025km", "Satellites": "None", "Image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/PIA23791-Venus-NewlyProcessedView-20200608.jpg/220px-PIA23791-Venus-NewlyProcessedView-20200608.jpg", "Category" : "Planet", "Year": "225 Days"])
        
        planetsData.append(["Name": "Mercury", "Size": "15,329km", "Satellites": "None", "Image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Mercury_in_color_-_Prockter07-edit1.jpg/220px-Mercury_in_color_-_Prockter07-edit1.jpg", "Category" : "Planet", "Year": "88 Days"])
        
        planetsData.append(["Name": "Jupiter", "Size": "439,264km", "Satellites": "Io, Europa, etc...", "Image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg/220px-Jupiter_and_its_shrunken_Great_Red_Spot.jpg", "Category" : "Planet", "Year": "11 Days"])
        
        planetsData.append(["Name": "Saturn", "Size": "378,675km", "Satellites": "Titan, etc...", "Image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Saturn_during_Equinox.jpg/300px-Saturn_during_Equinox.jpg", "Category" : "Planet", "Year": "29 Days"])
        
        planetsData.append(["Name": "Neptune", "Size": "155,600km", "Satellites": "Triton, etc...", "Image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Neptune_-_Voyager_2_%2829347980845%29_flatten_crop.jpg/220px-Neptune_-_Voyager_2_%2829347980845%29_flatten_crop.jpg", "Category" : "Planet", "Year": "164 Days"])
        
        planetsData.append(["Name": "Uranus", "Size": "160,590km", "Satellites": "Miranda, Ariel, etc...", "Image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Uranus2.jpg/220px-Uranus2.jpg", "Category" : "Planet", "Year": "84 Days"])
        
        planetsData.append(["Name": "Sun", "Size": "4.379 million km", "Satellites": "None", "Image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/The_Sun_by_the_Atmospheric_Imaging_Assembly_of_NASA%27s_Solar_Dynamics_Observatory_-_20100819.jpg/220px-The_Sun_by_the_Atmospheric_Imaging_Assembly_of_NASA%27s_Solar_Dynamics_Observatory_-_20100819.jpg", "Category" : "Star", "Year": "N/A"])
                
       
        do {
                        
            let jsonData = try JSONSerialization.data(withJSONObject: planetsData, options: [])
            let decoder = JSONDecoder()
            let data = try decoder.decode([Planets].self, from: jsonData)
            
            
            DispatchQueue.main.async {

                completion(data, true)
            
            }
                           
        }
        
        catch let error as NSError {
            print(error)
         }
        
    
//        let data = try JSONDecoder().decode(Planets.self, from: planetsData)
            
            
        }

}
