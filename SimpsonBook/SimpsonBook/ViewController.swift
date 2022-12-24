import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    
    
    var simpsonArray = [Simpson]()
    
    var selectedSimpsonName = ""
    var selectedSimpsonJob = ""
    var selectedSimpsonImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TableView.delegate = self
        TableView.dataSource = self
        
        let hommer = Simpson(name: "Homer Simpson", job: "Nucleer Safety", image: UIImage(named: "homer")!)
        let marge = Simpson(name: "Marge Simpson", job: "Houseeife", image: UIImage(named: "marge")!)
        let bart = Simpson(name: "Bart Simpson", job: "Student", image: UIImage(named: "bart")!)
        let lisa = Simpson(name: "Lisa Simpson", job: "Student", image: UIImage(named: "lisa")!)
        
        simpsonArray = [hommer, marge, bart, lisa]
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = simpsonArray[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSimpsonName = simpsonArray[indexPath.row].name
        selectedSimpsonJob = simpsonArray[indexPath.row].job
        selectedSimpsonImage = simpsonArray[indexPath.row].image
        performSegue(withIdentifier: "showDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedName = selectedSimpsonName
            destinationVC.selectedJobName = selectedSimpsonJob
            destinationVC.selectedImage = selectedSimpsonImage
        }
    }

}

