//
//  ViewController.swift
//  MentorBook
//
//  Created by 井戸海里 on 2020/09/06.
//  Copyright © 2020 IdoUmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //mentorを配列として宣言する
    var mentorArray:[Mentor] = []
    
    //ラベルの宣言
    @IBOutlet var imageView:UIImageView!
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var courseLabel:UILabel!
    //表示するメンターの番号
    var index : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        mentorArray.append(Mentor(name: "ながた",imageName: "nagata.jpg",course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう",imageName: "ryo.jpg",course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ",imageName: "taithi.jpg",course: "WebS,WebD"))
        
        setUI()
    }
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    //ボタンの宣言
    @IBAction func mae(){
        
        index = index - 1
        
        if index < 0{
            
            index = 2
        }
        setUI()
        
       
        
        
    }
    
    @IBAction func tugi(){
        index = index + 1
        
        if index > 2 {
            
        index = 0
            
        }
        setUI()
    
    }


}

