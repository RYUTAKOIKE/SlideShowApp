//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 小池 隆太 on 2016/06/06.
//  Copyright © 2016年 小池 隆太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var img: UIImageView! = UIImageView()
    
    var nowpage = 1
    
    var myImage = UIImage(named:"Image1-A")

    
    
    @IBOutlet weak var image: UIButton!
    
    
    
    @IBOutlet weak var next: UIButton!
    
    
    
    @IBOutlet weak var play: UIButton!
    
   var timer: NSTimer! = NSTimer()
    
   
    @IBAction func playimage(sender: UIButton) {
        

        

        if timer == nil {
            play .setTitle("停止", forState: UIControlState.Normal)
            

            timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.onUpdate(_:)), userInfo: nil, repeats: true)
        }  else if timer.valid  { play .setTitle("再生", forState: UIControlState.Normal)
            
            timer.invalidate()
        }
        
    else {timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.onUpdate(_:)), userInfo: nil, repeats: true)
        play .setTitle("停止", forState: UIControlState.Normal) }
        
    
        

        
        // timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.onUpdate(_:)), userInfo: nil, repeats: true)
        
        
  }
     
     func onUpdate(timer : NSTimer){ if nowpage < 3 {
            nowpage += 1
        }
            
        else if nowpage == 3 {
            nowpage -= 2
            
            }
        
       
        changepage(nowpage)
        
        print("\(nowpage)ページ目")
//       if timer.valid  {
            
//          timer.invalidate()
//     }
      
        
        
    }
    
    
    
    
    
    
        
    @IBAction func nextimage() {
        if nowpage < 3 {
            nowpage += 1
        }
        
        else if nowpage == 3 {
         nowpage -= 2
            
        }
    
        
    changepage(nowpage)
        
        print("\(nowpage)ページ目")
        
    }
    
    
     @IBOutlet weak var back: UIButton!
    
    
        @IBAction func backimage() {
            if nowpage > 1 {
                nowpage -= 1
            }
            
            else if nowpage == 1 {
                
                nowpage += 2
                
            }
            
            
    changepage(nowpage)
            print("\(nowpage)ページ目")
    }
    
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
    let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController
    
     resultViewController.displayimage = myImage
    
    
    }

    

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        img.image = myImage
        
        // をViewに追加する.
        self.view.addSubview(img)
    
        
        
        image.setImage(myImage, forState: UIControlState.Normal)
    
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
}

    
    func changepage(page: Int) {
      
        
        switch page {
       
        case 1:
            myImage = UIImage(named: "Image1-A")
            
        case 2:
            myImage = UIImage(named: "Image2-A")
        
        case 3:
            myImage = UIImage(named: "Image3-A")
       
        default: break
        }
        
        image.setImage(myImage, forState: UIControlState.Normal)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
       
    }
    
    
}


