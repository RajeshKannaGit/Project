import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var contactName: UILabel!
    @IBOutlet weak var contactNumber: UILabel!

    var image: String?
    var contactname: String?
    var number: String?
    
    func initialiseData(image: String?,contactname: String?,number: String?){
        self.image = image
        self.contactname = contactname
        self.number = number
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView.image = UIImage(named: image ?? "")
        contactName.text = contactname ?? ""
        contactNumber.text = number ?? ""
    }


    @IBAction func button(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
}
