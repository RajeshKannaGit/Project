//
//  firstViewController.swift
//  TableView
//
//  Created by Quickride on 09/09/22.
//

import UIKit

class firstViewController: UIViewController {

    @IBOutlet weak var collectionViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var tableViewTopconstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewTopconstraint.constant = abs(collectionViewBottomConstraint.constant) * 5
        
    }
    
    @IBAction func tableViewButton(_ sender: UIButton) {
        let svc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(svc, animated: true)
    }
    
    @IBAction func collectionViewButton(_ sender: UIButton) {
//        let firstViewController = UIViewController(nibName: "collectionView", bundle: nil)
//        self.navigationController?.pushViewController(firstViewController, animated: true)
        
        let svc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "CollectionViewController") as! CollectionViewController
        self.navigationController?.pushViewController(svc, animated: true)
    }
}
