//
//  CustomCell.swift
//  CognizantTest
//
//  Created by Athlosn90 on 13/03/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
    var dvm: DataViewModel! {
          didSet{
            nameLabel.text = dvm.name
            sizeLabel.text = "Size: \(dvm.size)"
            satLabel.text = "Moons: \(dvm.satellites)"
            catLabel.text = "Type: \(dvm.category)"
            yearLabel.text = "Year: \(dvm.year)"
            dvm.processImages(imageString: dvm.image) { (img) in
                self.imageFrame.image = img
            }
                
          }
      }
    
    var nameLabel: UILabel = {
        
        var text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.boldSystemFont(ofSize: 25)
        return text
    }()
    
    var imageFrame: UIImageView = {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 35
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    var sizeLabel: UILabel = {
        
        var text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.systemFont(ofSize: 16)

        return text
    }()
    
    var satLabel: UILabel = {
        
        var text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.systemFont(ofSize: 16)
        
        return text
    }()
    
    var catLabel: UILabel = {
        
        var text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.systemFont(ofSize: 16)
        
        return text
    }()
    
    var yearLabel: UILabel = {
        
        var text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.systemFont(ofSize: 16)
        text.isAccessibilityElement = true

        
        return text
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        isAccessibilityElement = false

        addSubview(nameLabel)
        addSubview(imageFrame)
        addSubview(sizeLabel)
        addSubview(satLabel)
        addSubview(catLabel)
        addSubview(yearLabel)

        setNameLabel()
        setImageFrame()
        setDetailLabel()
        setSatLabel()
        setCatLabel()
        setYearLabel()

    }
    
    
    func setNameLabel() {
        let Constraints = [nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                           nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
                           nameLabel.widthAnchor.constraint(equalToConstant: 200)]
        
        NSLayoutConstraint.activate(Constraints)
        
    }
    
    func setImageFrame() {
        let Constraints = [imageFrame.leftAnchor.constraint(equalTo: leftAnchor, constant: 30),
                           imageFrame.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                           imageFrame.widthAnchor.constraint(equalToConstant: 70),
                           imageFrame.heightAnchor.constraint(equalToConstant: 70)]
        
        NSLayoutConstraint.activate(Constraints)
    }
    
    func setDetailLabel() {
        let Constraints = [sizeLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 30),
                           sizeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
                           sizeLabel.widthAnchor.constraint(equalToConstant: 200)]
          
          NSLayoutConstraint.activate(Constraints)
    }
    
    func setSatLabel() {
        let Constraints = [satLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 30),
                           satLabel.topAnchor.constraint(equalTo: sizeLabel.bottomAnchor, constant: 10),
                           satLabel.widthAnchor.constraint(equalToConstant: 200)]
          
          NSLayoutConstraint.activate(Constraints)
    }
    
    func setCatLabel() {
         let Constraints = [catLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 30),
                            catLabel.topAnchor.constraint(equalTo: satLabel.bottomAnchor, constant: 10),
                            catLabel.widthAnchor.constraint(equalToConstant: 200)]
           
           NSLayoutConstraint.activate(Constraints)
     }
    
    func setYearLabel() {
         let Constraints = [yearLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 30),
                            yearLabel.topAnchor.constraint(equalTo: catLabel.bottomAnchor, constant: 10),
                            yearLabel.widthAnchor.constraint(equalToConstant: 200)]
           
           NSLayoutConstraint.activate(Constraints)
     }
    

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
