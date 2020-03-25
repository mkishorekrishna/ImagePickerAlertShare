//
//  ViewController.swift
//  ImagePicker
//
//  Created by Kishore Krishna M on 22/03/20.
//  Copyright © 2020 Kishore Krishna M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openImages(_ sender: UIButton) {
        let modalImageController = UIImagePickerController()
        present(modalImageController, animated: true, completion: nil)
    }
    
    @IBAction func shareButton(_ sender: UIButton) {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
         present(controller, animated: true, completion: nil)
    }

    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController()
        alert.title = "Test Alert"
        alert.message = "Alert Message "
        present(alert, animated: true, completion: nil)
        let ok = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        {
         ACTION in self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(ok)
    }
    

}

