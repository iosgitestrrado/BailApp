//
//  ChatListVC.swift
//  BailApp
//
//  Created by Monish M S on 01/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit

class ChatListVC: UIViewController,GetResultResponse ,UITableViewDataSource, UITableViewDelegate{
  
    @IBOutlet weak var listtableView: UITableView!
    var model :ChatListModel = ChatListModel()
    let functionCall = GetRespone()
    var DashCellData :[ChatListModel]? = []
@IBOutlet weak var navHieght: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        listtableView.tableFooterView = UIView()
        listtableView.separatorColor = .clear
        DashCellData?.removeAll()
        listtableView.reloadData()
        
        if UI_USER_INTERFACE_IDIOM() == .phone {
            
            if screenSize.height == 812 {
                navHieght.constant = 84;
            }
        }
        
        // Do any additional setup after loading the view.
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        //callWebservice()
        
        
        
        
        
        
    }
    //TODO:- WebService & Result
    
    func callWebservice(){
        
        let baseHappens:String = setlanguage() ? BailAppBaseUrl : FarminnoBaseUrlArabic
        functionCall.delegete = self
        functionCall.getserviceCall(param:ServiceCallRepresenation(), tpye: baseHappens+BailAppLogin as NSString)
        
        
        
    }
    
    func GetServiceRespone(param:NSDictionary){
        
        //FIXME:- valueFrom WebService
        print(param)
//    let dict =  param.object(forKey: "user") as! NSArray
       
        DashCellData?.removeAll()
        
        
//        for item in dict as! [NSDictionary]  {
//
//            let model :ChatListModel = ChatListModel.init(ChatNameinit: item.object(forKey: "first_name") as? String ?? "", ChatIdinit: item.object(forKey: "id") as? String ?? "", ChatImageinit: item.object(forKey: "image") as? String ?? "", ChatPostdateinit: item.object(forKey: "date_added") as? String ?? "",ChatCountinit : item.object(forKey: "count") as? String ?? "")
//
//
//
//
//
//            DashCellData?.append(model)
//
//        }
//
//        DispatchQueue.main.async {
//
//            self.listtableView.reloadData()
//        }
//
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - TABLEVIEW DELAGATES Swift 3
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    
        
        return (DashCellData?.count)!
        
        
    }
    
    
    // cell height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100.0;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = CattileListTableViewCell()
      
            cell = listtableView.dequeueReusableCell(withIdentifier: "cattleList", for: indexPath ) as! CattileListTableViewCell
            
      
        configureMarketdisplayCell(cell: cell,forrowatindepath:indexPath as NSIndexPath)
        
        return cell
    }
    
    func configureMarketdisplayCell(cell:CattileListTableViewCell,forrowatindepath indexPath:NSIndexPath){
        
        let modelData:ChatListModel = DashCellData![indexPath.row]
        cell.showCount.isHidden = true
        cell.heading.text = modelData.ChatName
        cell.mainImage.sd_setImage(with: URL(string: modelData.ChatImage), placeholderImage:UIImage(named: "imagePlaceHolder"))
        
        
        if modelData.Chatcount != "0"{
            cell.showCount.text = ""
            cell.showCount.isHidden = false
            
        }
        cell.price.text =  modelData.ChatPostdate
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
 
    
    
}
extension ChatListVC{
    
    
    func ServiceCallRepresenation() -> [String : Any] {
        
        let parameters:[String : Any] = ["user_id":userDefaults.GET_USERDEFAULTS(objectValue: "user_id")]
        
        
        
        return parameters as [String : Any]
        
    }
    
    
    
    
}
