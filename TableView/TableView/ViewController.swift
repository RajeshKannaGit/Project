//
//  ViewController.swift
//  TableView
//
//  Created by Quickride on 08/09/22.
//

import UIKit
class ViewController: UIViewController {
        
    @IBOutlet weak var tableView: UITableView!
    var ContactList : [ContactData] = []

        override func viewDidLoad() {
            super.viewDidLoad()
            
            ContactListData()
           tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "ContactDetailTableViewCell", bundle: nil), forCellReuseIdentifier: "ContactDetailTableViewCell")
        }
        
    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    func ContactListData() {
            let contact1 = ContactData(contactName: "Bheem", contactNumber: "9080706050", profileImage: "ball")
            ContactList.append(contact1)
            
            let contact2 = ContactData(contactName: "Arun", contactNumber: "9010203040", profileImage: "Mouse")
            ContactList.append(contact2)
            
            let contact3 = ContactData(contactName: "Varun", contactNumber: "6789045453", profileImage: "Lion")
            ContactList.append(contact3)
            
            let contact4 = ContactData(contactName: "Kong", contactNumber: "6373245709", profileImage: "ball")
            ContactList.append(contact4)
            
            let contact5 = ContactData(contactName: "Bheem", contactNumber: "9080706050", profileImage: "Mouse")
            ContactList.append(contact5)
            
            let contact6 = ContactData(contactName: "Arun", contactNumber: "9010203040", profileImage: "ball")
            ContactList.append(contact6)
            
            let contact7 = ContactData(contactName: "Varun", contactNumber: "6789045453", profileImage: "Lion")
            ContactList.append(contact7)
            
            let contact8 = ContactData(contactName: "Kong", contactNumber: "6373245709", profileImage: "ball")
            ContactList.append(contact8)
        }
    }

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ContactList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"ContactDetailTableViewCell") as! ContactDetailTableViewCell
        
        cell.initialiseData(profileImage: ContactList[indexPath.row].profileImage ??  "", ContactName: ContactList[indexPath.row].contactName ?? "", Number: ContactList[indexPath.row].contactNumber ?? "",navigationController: self.navigationController!)
        return cell
    }
    
    
}
