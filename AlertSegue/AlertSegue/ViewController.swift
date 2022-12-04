import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passwordAgain: UITextField!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logIn(_ sender: Any) {
        userName = name.text!
        if(name.text == "" || password.text == ""){
            let alert = UIAlertController(title: "Error", message: "Kullanıcı Adı veya Password Boş bırakılamaz", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {(UIAlertAction) in
                print("clicked")
            }
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
        else if(password.text != passwordAgain.text){
            let alert = UIAlertController(title: "Error", message: "Parolalar Uyuşmuyor", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {(UIAlertAction) in
                print("clicked")
            }
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
        else{
            performSegue(withIdentifier: "loginSuccess", sender: nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "loginSuccess"){
            let destinationVC = segue.destination as? SecondViewController
            destinationVC?.getName = userName
        }
    }
}

