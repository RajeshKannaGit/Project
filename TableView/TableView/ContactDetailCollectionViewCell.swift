//
//  ContactDetailCollectionViewCell.swift
//  TableView
//
//  Created by Quickride on 09/09/22.
//

import UIKit

class ContactDetailCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var ContactName: UILabel!
    @IBOutlet weak var Number: UILabel!
    var image: String?
    var contactname: String?
    var number: String?
    var navigationController = UINavigationController()
    
    func initialiseData(profileImage: String,ContactName: String, Number: String,navigationController: UINavigationController ){
        profileImageView.layer.cornerRadius = 25
        profileImageView.image = UIImage(named: profileImage)
        self.ContactName.text = ContactName
        self.Number.text = Number
        self.navigationController = navigationController
        self.image = profileImage
        self.contactname = ContactName
        self.number = Number
    }

    @IBAction func button(_ sender: UIButton) {
        let svc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        svc.initialiseData(image: image, contactname: contactname, number: number)
        self.navigationController.pushViewController(svc, animated: true)
    }
}
