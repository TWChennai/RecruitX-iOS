import UIKit
import Alamofire

class InterviewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var interviewTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        InterviewViewModel.getForAllInteveiws(user: "user", onLoadedAllInterviews: loadInterview)
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
    
    func loadInterview(interviews: [Interview]) {
        let cells = interviewTable.visibleCells
        for (index, element) in interviews.enumerated() {
            cells[index].textLabel?.text = element.firstName!
        }
    }

}

