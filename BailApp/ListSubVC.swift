//
//  ListSubVC.swift
//  BailApp
//
//  Created by Monish M S on 02/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit


class ListSubVC: UIViewController,GetResultResponse,UITableViewDataSource, UITableViewDelegate {
var modelGetData :MenuDisplayModel = MenuDisplayModel()
     var menuSubListdisplay   =  [SublistDataModel]()
     var segueModel:SublistDataModel  = SublistDataModel()
 let searchController = UISearchController(searchResultsController: nil)
var FiltermenuSubListdisplay   =  [SublistDataModel]()
    @IBOutlet var searchFooter: SearchFooter!
    
    
    @IBOutlet weak var subListtableView: UITableView!
   @IBOutlet weak var navHieght: NSLayoutConstraint!
      @IBOutlet weak var titleLbl: UILabel!
    
    
let functionCall = GetRespone()
    override func viewDidLoad() {
        
        
        // Setup the Search Controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        self.subListtableView.tableHeaderView = searchController.searchBar
       definesPresentationContext = true
        
         searchController.hidesNavigationBarDuringPresentation = false
       
        
        // Setup the Scope Bar
    
        searchController.searchBar.delegate = self
        
        // Setup the search footer
        subListtableView.tableFooterView = searchFooter
        
        
        
        
        
        
        
        
        
        
        
        super.viewDidLoad()
        
        menuSubListdisplay.removeAll()
//        subListtableView.tableFooterView = UIView()
        subListtableView.separatorColor = .clear
        if UI_USER_INTERFACE_IDIOM() == .phone {
            
            if screenSize.height == 812 {
                navHieght.constant = 84;
            }
        }
        
        
        serviceCall()
        
        // Do any additional setup after loading the view.
    }
    
    
  




    func serviceCall()  {
        
        functionCall.delegete = self
        if ( modelGetData.menu_Id != "" ) {
        titleLbl.text = modelGetData.menu_Name
            print(modelGetData.menu_Name!)
            
            
        functionCall.getserviceCall(param: ListSubServiceCallRepresenation(), tpye: BailAppBaseUrl+BailAppCategoryRequest as NSString)
            
        }else{
            titleLbl.text = "My Requests"
             functionCall.getserviceCall(param: ListSubServiceCallRepresenation(), tpye: BailAppBaseUrl+BailAppMyRequest as NSString)
            
        }
    }
    @IBAction func backNavigationAction(_ sender: Any) {
        
        _ = navigationController?.popViewController(animated: true)
        
        
    }
    func GetServiceRespone(param: NSDictionary) {
        
        let   dict =  param.object(forKey: "data") as! NSArray
        print(dict)
        

        

//          /  menuListdisplay.removeAll()
            for item in dict as! Array<Any> {

                let obj = item as! NSDictionary

                let menu_Id : Int = obj.object(forKey: "request_id")as? Int ?? 0
                let stringMenu_Id = "\(menu_Id)"



let menumodel = SublistDataModel(SublistNameinit: obj.object(forKey: "name")as? String ?? "", SublistIdinit: stringMenu_Id, SublistImageinit: obj.object(forKey: "attachment")as? String ?? "", SublistPostdateinit: obj.object(forKey: "request_date")as? String ?? "", SublistAmountinit: obj.object(forKey: "donation")as? String ?? "", Sublistcategoryinit: obj.object(forKey: "category")as? String ?? "", SublistAddressinit: obj.object(forKey: "address1")as? String ?? "", SublistDescinit: obj.object(forKey: "description")as? String ?? "", SublistCaseNoinit: obj.object(forKey: "caseno")as? String ?? "")





                menuSubListdisplay.append(menumodel)




            }


      
        showLoader()
     
   
        
    }
    
    @IBAction func showLoader(){
        subListtableView.reloadData()

        
        self.subListtableView.showLoader()
        
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ListSubVC.removeLoader), userInfo: nil, repeats: false)
    }
    
    @objc func removeLoader(){
        self.subListtableView.hideLoader()
    }

    
    @IBAction func detailLink(_ sender: Any) {
        
        
        UIApplication.shared.open(URL(string : "https://services.bahrain.bh/wps/portal/!ut/p/a1/jc9RC4IwEAfwj7RzbvN63BTc0iGRku1F9hSDsoiIPn6695b3dvD7c_8jjozEzf4dLv4V7rO_rrsTE2JdZhTpvut7BVKo1nLeZmizBZwXwJGWullBzjhI1hzU0OkcOtiWL2upWdECAEMKplK6KnYWwIhtefgx8u_9o3-SE3GRpb6IIFUzgkSPx20Yxo8JX_m7qLU!/dl5/d5/L0lHSkovd0RNQUprQUVnQSEhLzRKU0UvZW4!/")!, options: [:], completionHandler: { (status) in
            
        })
        
        
        
        
    }
    
    
    
    
    
    
    // MARK: - TABLEVIEW DELAGATES Swift 3
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        if isFiltering() {
            searchFooter.setIsFilteringToShow(filteredItemCount: FiltermenuSubListdisplay.count, of: menuSubListdisplay.count)
            return FiltermenuSubListdisplay.count
        }
        
        searchFooter.setNotFiltering()
  
        
        
        
        return menuSubListdisplay.count
        
        
    }
    
    
    // cell height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        
      
            
      return 140.0;
            
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = SubListTableViewCell()
        
        
         if ( modelGetData.menu_Id != "" ) {
        cell = subListtableView.dequeueReusableCell(withIdentifier: "SubListCell", for: indexPath ) as! SubListTableViewCell
        
        
        configureMarketdisplayCell(cell: cell,forrowatindepath:indexPath as NSIndexPath)
        }
         else{
            
            cell = subListtableView.dequeueReusableCell(withIdentifier: "MySubListCell", for: indexPath ) as! SubListTableViewCell
            
            
            configureMarketdisplayMyCell(cell: cell,forrowatindepath:indexPath as NSIndexPath)
            
        }
        
        
        
        
      
      
        
        
        
        return cell
    }
    
    func configureMarketdisplayCell(cell:SubListTableViewCell,forrowatindepath indexPath:NSIndexPath){
        
        //let modelData:SublistDataModel = menuSubListdisplay[indexPath.row]
      
        let modelData: SublistDataModel
        if isFiltering() {
            modelData = FiltermenuSubListdisplay[indexPath.row]
        } else {
            modelData = menuSubListdisplay[indexPath.row]
        }
        
        
        
        
        cell.heading.text = modelData.SublistName
        cell.mainImage.sd_setImage(with: URL(string: modelData.SublistImage), placeholderImage:nil)
        cell.DonateBtn.addTarget(self, action:  #selector(ListSubVC.detailLink(_:)), for: .touchUpInside)
        
        if   userDefaults.GET_USERDEFAULTS(objectValue:"country") == "" || userDefaults.GET_USERDEFAULTS(objectValue:"country") == "Bahrain" {
        
        
        
        cell.amount.text =  modelData.SublistAmount + " BHD"
            
            
        }else{
            
              cell.amount.text =  modelData.SublistAmount + " SAR"
            
        }
        cell.date.text =  modelData.SublistPostdate
        
        if modelData.Sublistcategory == "Prisoner" {
        
            
            let main_string:String = modelData.SublistCaseNo + " ( " + modelData.Sublistcategory + " )"
            let string_to_color:String  = modelData.Sublistcategory
            
            
            
            let attrString = NSMutableAttributedString(string: main_string, attributes: nil)
            let rangeText = (attrString.string as NSString).range(of: string_to_color)
            
            attrString.addAttributes([NSAttributedStringKey.foregroundColor: UIColor.black],
                                     range: rangeText)
            
            
            cell.category.attributedText = attrString
            
        }else{
            
            cell.category.text =  modelData.Sublistcategory
            
        }
        
    }
    
    
    func configureMarketdisplayMyCell(cell:SubListTableViewCell,forrowatindepath indexPath:NSIndexPath){
        
   
        
        let modelData: SublistDataModel
        if isFiltering() {
            modelData = FiltermenuSubListdisplay[indexPath.row]
        } else {
            modelData = menuSubListdisplay[indexPath.row]
        }
        
        
        
        
        
        
        
        
        cell.mainImage.sd_setImage(with: URL(string: modelData.SublistImage), placeholderImage:nil)
        
       
        
        if   userDefaults.GET_USERDEFAULTS(objectValue:"country") == "" || userDefaults.GET_USERDEFAULTS(objectValue:"country") == "Bahrain" {
            
            
            
            cell.amount.text = "Total Amount : " + modelData.SublistAmount + " BHD"
            
            
        }else{
            
            cell.amount.text = "Total Amount : " + modelData.SublistAmount + " SAR"
            
        }
        
        
        cell.date.text =  modelData.SublistPostdate
        if modelData.Sublistcategory == "Prisoner" {
            
         
            
            let main_string:String = modelData.SublistCaseNo + " ( " + modelData.Sublistcategory + " )"
            let string_to_color:String  = modelData.Sublistcategory
            
            
            
            let attrString = NSMutableAttributedString(string: main_string, attributes: nil)
            let rangeText = (attrString.string as NSString).range(of: string_to_color)
            
            attrString.addAttributes([NSAttributedStringKey.foregroundColor: UIColor.black],
                                     range: rangeText)
            
            
            cell.category.attributedText = attrString
            
            
            
            
            
        }else{
            
            cell.category.text =  modelData.Sublistcategory
            
        }
        
   
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        

        if isFiltering() {
            segueModel = FiltermenuSubListdisplay[indexPath.row]
        } else {
            segueModel = menuSubListdisplay[indexPath.row]
        }
        
        
        
        performSegue(withIdentifier: "detailSegue", sender: self)
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detailSegue") {
            let secondViewController = segue.destination as! detailVC
            secondViewController.modelGetDataDetail = segueModel
        }
    }
    // MARK: - Private instance methods
    
    func filterContentForSearchText(_ searchText: String) {
        FiltermenuSubListdisplay = menuSubListdisplay.filter({( candy : SublistDataModel) -> Bool in
          
            if candy.Sublistcategory == "Prisoner" {
                return  candy.SublistName.lowercased().contains(searchText.lowercased()) || candy.SublistCaseNo.lowercased().contains(searchText.lowercased())
            }else{
                return  candy.SublistName.lowercased().contains(searchText.lowercased())
            }
        })
       subListtableView.reloadData()
    }
    
    func searchBarIsEmpty() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func isFiltering() -> Bool {
        let searchBarScopeIsFiltering = searchController.searchBar.selectedScopeButtonIndex != 0
        return searchController.isActive && (!searchBarIsEmpty() || searchBarScopeIsFiltering)
    }


    
   

}
extension ListSubVC{
    func ListSubServiceCallRepresenation() -> [String : Any] {
        var parameters:[String : Any]
      if ( modelGetData.menu_Id != "" ) {
    
    
       parameters  = ["cat_id":modelGetData.menu_Id!,"utoken":userDefaults.GET_USERDEFAULTS(objectValue:"utoken")]
       
    
    }else{
            
             parameters = ["utoken":userDefaults.GET_USERDEFAULTS(objectValue:"utoken")]
    }
    
     return parameters as [String : Any]    }
}
extension ListSubVC: UISearchBarDelegate {
    // MARK: - UISearchBar Delegate
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchBar.text!)
    }
}

extension ListSubVC: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
      
      
        filterContentForSearchText(searchController.searchBar.text!)
    }
}
