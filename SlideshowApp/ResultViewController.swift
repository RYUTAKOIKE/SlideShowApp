//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 小池 隆太 on 2016/06/06.
//  Copyright © 2016年 小池 隆太. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var displayimage : UIImage!
    
    @IBOutlet weak var displayimageview: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

    displayimageview.image = displayimage
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
