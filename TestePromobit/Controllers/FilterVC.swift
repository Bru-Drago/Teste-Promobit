//
//  FilterVC.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 18/10/20.
//

import UIKit

enum FilterSection {
    static let nameAZ    = 0
    static let nameZA    = 1
    static let companyAZ = 2
    static let companyZA = 3
}

class FilterVC: UIViewController {
    
    @IBOutlet weak var filterTableView:UITableView!
    @IBOutlet weak var segmentedFilter : UISegmentedControl!
    
   
    var filterInfo = [ContactData]()
    let placeholder = UIImage(named: "avatar")

    override func viewDidLoad() {
        super.viewDidLoad()
        

        filterInfo = filterSelected(filterInfo)
        
        filterTableView.delegate = self
        filterTableView.dataSource = self

        filterTableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
    
    
    func filterSelected(_ array: [ContactData])->[ContactData]{
        
        if segmentedFilter.selectedSegmentIndex == FilterSection.nameAZ {
            return array.sorted(by: { $0.userName < $1.userName })
        } else if segmentedFilter.selectedSegmentIndex == FilterSection.nameZA {
             return array.sorted(by: { $0.userName > $1.userName })
        } else if segmentedFilter.selectedSegmentIndex == FilterSection.companyAZ {
             return array.sorted(by: { $0.userCompany < $1.userCompany })
        } else if segmentedFilter.selectedSegmentIndex == FilterSection.companyZA {
             return array.sorted(by: { $0.userCompany > $1.userCompany })
        }
       
        return array
    }
    
    
    @IBAction func filterSelected(_ sender: UISegmentedControl) {
        filterInfo = filterSelected(filterInfo)
        filterTableView.reloadData()
    }
    
}
extension FilterVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        

        return filterInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = filterTableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! ContactCell
        cell.companyLbl.text = filterInfo[indexPath.row].userCompany
        let name = filterInfo[indexPath.row].userName
        let lastname = filterInfo[indexPath.row].userLastname
        cell.nameLbl.text = "\(name)" + " " + "\(lastname)"
        let responseURL = filterInfo[indexPath.row].userPhoto
        let imageURL = URL(string: responseURL)
      
        cell.userPhoto.sd_setImage(with: imageURL, placeholderImage: placeholder)
        let isNew = filterInfo[indexPath.row].userNovo
        if isNew == false{
           
            cell.isNewView.isHidden = true
        }else {
           
            cell.isNewView.isHidden = false
        }
        
        return cell
        
    }
    
    
}
