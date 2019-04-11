//
//  ViewController.swift
//  AlertController03
//
//  Created by dit03 on 2019. 4. 11..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbReturn: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnCam(_ sender: Any) {
        let myAlertController = UIAlertController(title: "Camera", message: "Take a Picture", preferredStyle: .actionSheet)
        
        //UIAlertAction 정의
        let camAction = UIAlertAction(title: "사진촬영", style: .default, handler: {
            (action: UIAlertAction) -> Void in
                self.lbReturn.text = "사진촬영을 시작합니다."
                self.view.backgroundColor = UIColor.gray
        })
        
        //후행클로저(trailing closure
        let libAction = UIAlertAction(title: "라이브러리", style: .default) {
            (action: UIAlertAction) -> Void in
            self.lbReturn.text = "사진을 불러옵니다."
            self.view.backgroundColor = UIColor.blue
        }
        
        let saveAction = UIAlertAction(title: "저장", style: .default) {
            (action: UIAlertAction) -> Void in
            self.lbReturn.text = "사진을 저장했습니다."
            self.view.backgroundColor = UIColor.brown
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel) {
            (action: UIAlertAction) -> Void in
            self.lbReturn.text = "취소"
            self.view.backgroundColor = UIColor.lightGray
        }
        
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive) {
            (action: UIAlertAction) -> Void in
            self.lbReturn.text = "삭제했습니다."
            self.view.backgroundColor = UIColor.white
        }
        
        //UIAlertAction을 UIAlertController에 등록(add)
        myAlertController.addAction(camAction)
        myAlertController.addAction(libAction)
        myAlertController.addAction(saveAction)
        myAlertController.addAction(cancelAction)
        myAlertController.addAction(deleteAction)
        
        self.present(myAlertController, animated: true, completion: nil)
    }
    
}

