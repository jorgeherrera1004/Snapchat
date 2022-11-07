//
//  loginViewController.swift
//  HerreraJaraSnapchat
//
//  Created by Jorge Herrera Jara on 6/11/22.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class loginViewController: UIViewController {
    

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){(user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil {
                print("Se presento el error: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
