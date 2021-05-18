//
//  ViewController.swift
//  Instgram
//
//  Created by Zhang, Shuming on 2021-05-17.
//

import UIKit
import Firebase
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //check status
        handleNotAuthenticated()
        
        
    }
    private func handleNotAuthenticated(){
        if Auth.auth().currentUser == nil {
            // show log in
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }

}

