//
//  ProfileVC.swift
//  BailApp
//
//  Created by Monish M S on 01/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit
import SDWebImage
class ProfileVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var displayTable: UITableView!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var navHieght: NSLayoutConstraint!
    
    @IBOutlet weak var nameHieght: NSLayoutConstraint!
    @IBOutlet weak var emailHieght: NSLayoutConstraint!
    
    
    
    
    
    var arrayHead:[String] = ["My Requests","My Donations","Settings","About","Logout"]
    var arrayImage:[UIImage] = [#imageLiteral(resourceName: "requests"),#imageLiteral(resourceName: "donate"),#imageLiteral(resourceName: "settings"),#imageLiteral(resourceName: "about"),#imageLiteral(resourceName: "support")]
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        self.setupUI()
    }
    
    
    func setupUI(){
        
        
        
        if UI_USER_INTERFACE_IDIOM() == .phone {
            
            if screenSize.height == 812 {
                navHieght.constant = 84;
                nameHieght.constant = 25
                emailHieght.constant = 20
            }else if screenSize.height == 568 {
                nameHieght.constant = 10
                emailHieght.constant = 5
                
            }
            else if screenSize.height == 667 {
                nameHieght.constant = 15
                emailHieght.constant = 10
                
            }else{
                
                nameHieght.constant = 25
                emailHieght.constant = 20
            }
            
        }
        
        nameLbl?.text = userDefaults.GET_USERDEFAULTS(objectValue: "name")
        emailLbl?.text = userDefaults.GET_USERDEFAULTS(objectValue: "email")
       
        phoneLbl?.text = userDefaults.GET_USERDEFAULTS(objectValue: "mobile")
          displayTable.tableFooterView = UIView(frame: .zero)
        profilePic.sd_setImage(with: URL(string: userDefaults.GET_USERDEFAULTS(objectValue: "image")), placeholderImage:nil)
        displayTable.reloadData()
    }

 

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    
    
    return arrayHead.count
    
    
    }
    
    
    // cell height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
{
    
    let height: CGFloat = tableView.frame.size.height
    return height/5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    var cell = MenuCell()
    
    cell = displayTable.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath ) as! MenuCell
    
    
    configureMarketdisplayCell(cell: cell,forrowatindepath:indexPath as NSIndexPath)
    
    return cell
    }
    
    func configureMarketdisplayCell(cell:MenuCell,forrowatindepath indexPath:NSIndexPath){
    
   
    
    
    
    
    cell.menuHead.text = arrayHead[indexPath.row]
    cell.menuImage.image = arrayImage[indexPath.row]
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if indexPath.row == 0 {
            
              performSegue(withIdentifier: "subListSegueProfile", sender: self)
        }
     if indexPath.row == 4 {
        
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
        print(Array(UserDefaults.standard.dictionaryRepresentation().keys).count)
        _ = self.tabBarController?.selectedIndex = 0
        
        
        }
    }
  
   
    
    }

