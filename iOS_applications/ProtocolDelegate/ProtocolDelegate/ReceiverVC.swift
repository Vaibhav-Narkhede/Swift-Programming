//
//  ReceiverVC.swift
//  ProtocolDelegate
//
//  Created by VNProgrammer on 21/09/21.
//

import UIKit

class ReceiverVC: UIViewController {
    
    @IBOutlet weak var lblData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GetDataSegue"{
            let sender: SenderVC = segue.destination as! SenderVC
            sender.delegate = self
        }
    }
}

extension ReceiverVC: MyProtocolDelegate{    
    func SendData(data: String) {
        print("received delegate event from sender")
        lblData.text = "Received -: \(data)"
    }
}
