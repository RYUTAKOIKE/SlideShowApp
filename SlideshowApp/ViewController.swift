//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 小池 隆太 on 2016/06/06.
//  Copyright © 2016年 小池 隆太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var img: UIImageView!
    
    @IBOutlet weak var image: UIButton!
  
  

    @IBOutlet weak var next: UIButton!
  
 
   
    
    
    
    
    @IBOutlet weak var back: UIButton!
    
    @IBOutlet weak var auto: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    

      
      
        // 表示する画像を設定する.
        let myImage = UIImage(named: "IMAGE1-A")
        
        // 画像をUIImageViewに設定する.
        img.image = myImage
        
        
        // をViewに追加する.
        self.view.addSubview(img)
    
        
        
        image.setImage(UIImage(named:"myimage"), forState: UIControlState.Normal)
    
    
    
    
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        
        
       
    }

    
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
       
    }
    
    
}


