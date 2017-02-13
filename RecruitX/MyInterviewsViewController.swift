import UIKit

class MyInterviewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    @IBOutlet weak var MyTable: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "interviewCell", for: indexPath) as! InterviewCell
        cell.intervieweeName!.text = "Interviewee Name"
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

