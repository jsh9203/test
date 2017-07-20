//
//  JshMainVC.swift
//  jshTest
//
//  Created by 주수현 on 2017. 1. 6..
//  Copyright © 2017년 주수현. All rights reserved.
//

import UIKit

class JshMainVC: UIViewController {

    @IBOutlet var lbl_name: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func actionTossToSameStoryboard() {
        

        let lo_callView = self.storyboard?.instantiateViewController(withIdentifier: "JshSecond")
        
        self.navigationController?.pushViewController(lo_callView!, animated: true)
    }
    
    
    // 다른스토리보드로 가기 abcde
    @IBAction func actionOtherSB() {
        let ls_storyBoard : String = ("Cth")
        let lo_storyboard : UIStoryboard = UIStoryboard(name: ls_storyBoard, bundle: nil)

        let lo_callView = lo_storyboard.instantiateViewController(withIdentifier: "CthMain")

        self.navigationController?.pushViewController(lo_callView, animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
