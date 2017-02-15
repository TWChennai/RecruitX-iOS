import UIKit

class MyInterviewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIInteractor {
    var myInterviewsViewModel: MyInterviewsViewModel?
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    var interviews = ["Interviewee Name", "Interviewee Name1", "Interviewee Name2"]
    
    @IBOutlet weak var MyInterviewsTable: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return interviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "interviewCell", for: indexPath) as! InterviewCell
        cell.intervieweeName!.text = interviews[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myInterviewsViewModel = MyInterviewsViewModel()
        myInterviewsViewModel?.fetch(onLoad: loadInterviews)
    }

    func loadInterviews(myInterviews: [MyInterviews]) {
        let cells = MyInterviewsTable.visibleCells as! [InterviewCell]
        for (index, element) in myInterviews.enumerated() {
            cells[index].intervieweeName?.text = element.firstName!
        }
    }

}

protocol UIInteractor {
    func loadInterviews(myInterviews: [MyInterviews])
}

