import UIKit

class InterviewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var interViewTable: UITableView! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        interViewTable.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "interview"
        return cell
    }

}

