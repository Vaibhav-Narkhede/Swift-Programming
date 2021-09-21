//
//  SenderVC.swift
//  ProtocolDelegate
//
//  Created by VNProgrammer on 21/09/21.
//

import UIKit

class SenderVC: UIViewController {
    var delegate: MyProtocolDelegate?
    
    @IBOutlet weak var txtData: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSendDataTouched(_ sender: Any){
        let strData = self.txtData.text
        if self.delegate != nil && strData != nil{
            print("sending delegate event to receiver")
            delegate?.SendData(data: strData!)
            dismiss(animated: true, completion: nil)
        }
    }

}
