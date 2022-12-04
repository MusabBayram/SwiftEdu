import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    var getName = ""
    
    override func viewDidLoad() {
        name.text = getName
        super.viewDidLoad()

    }
    

}
