//
//  AlertViewController.swift
//  Week05App
//
//  Created by Minsu Kim on 2021-10-14.
//

import UIKit

class AlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lblResult: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func buttonPressed(_ sender: Any) {
       let box = UIAlertController(title: "title goes here", message: "message goes here", preferredStyle:   .actionSheet) // .alert
        box.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        box.addAction(UIAlertAction(title: "Yes", style: .cancel, handler: nil))
        box.addAction(UIAlertAction(title: "No", style: .destructive, handler: nil))
        box.addAction(UIAlertAction(title: "push me", style: .default, handler: { action in self.lblResult.text = "hello world!" // action trigger
            
        }))
        
        box.addTextField()
      
        self.present(box, animated: true)
    }
}
