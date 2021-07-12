//
//  HomeVC.swift
//  BailApp
//
//  Created by Monish M S on 01/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit
import FSPagerView
import ListPlaceholder
import Foundation

class HomeVC:  UIViewController ,GetResultResponse,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,FSPagerViewDataSource,FSPagerViewDelegate{
    @IBOutlet var menuListCV: UICollectionView!
    let functionCall = GetRespone()
    var menuListdisplay   =  [MenuDisplayModel]()
     var menuListdisplayData   =  [MenuDisplayModel]()
    
    var segueModel:MenuDisplayModel  = MenuDisplayModel()
    @IBOutlet weak var navHieght: NSLayoutConstraint!
    var imageNames : [UIImage] =  []
    
    var imageNameslist = [#imageLiteral(resourceName: "banner"),#imageLiteral(resourceName: "banner_2"),#imageLiteral(resourceName: "banner_3")]
    
    
    
      let fullImageNames = [#imageLiteral(resourceName: "fullbanner_1"),#imageLiteral(resourceName: "fullbanner_2"),#imageLiteral(resourceName: "fullbanner_3")]
    
    
    var langBool: Bool = true
    @IBOutlet weak var myDemoConstraint:NSLayoutConstraint!
 
     @IBOutlet var menuHiddenView: UIView!
    var timerTest : Timer?
     @IBOutlet var prisonerLbl: UILabel!
     @IBOutlet var othersLbl: UILabel!
    @IBOutlet var langBtn: UIButton!
    
    
    @IBOutlet weak var pagerView: FSPagerView! {
        didSet {
            self.pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
            typeIndex = 2
            
        }
    }
    
    
    fileprivate var typeIndex = 0 {
        didSet {
            let type = self.transformerTypes[typeIndex]
            self.pagerView.transformer = FSPagerViewTransformer(type:type)
            switch type {
            case .crossFading, .zoomOut, .depth:
                self.pagerView.itemSize = .zero // 'Zero' means fill the size of parent
            case .linear, .overlap:
                let transform = CGAffineTransform(scaleX: 0.6, y: 0.75)
                self.pagerView.itemSize = self.pagerView.frame.size.applying(transform)
            case .ferrisWheel, .invertedFerrisWheel:
                self.pagerView.itemSize = CGSize(width: 180, height: 140)
            case .coverFlow:
                self.pagerView.itemSize = CGSize(width: 220, height: 170)
            case .cubic:
                let transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                self.pagerView.itemSize = self.pagerView.frame.size.applying(transform)
            }
        }
    }
    
    
    fileprivate let transformerTypes: [FSPagerViewTransformerType] = [.crossFading,
                                                                      .zoomOut,
                                                                      .depth,
                                                                      .linear,
                                                                      .overlap,
                                                                      .ferrisWheel,
                                                                      .invertedFerrisWheel,
                                                                      .coverFlow,
                                                                      .cubic]
    
    
    // MARK:- FSPagerViewDataSource
    
    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        return imageNames.count
    }
    
    public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.setShowActivityIndicator(true)
        cell.imageView?.setIndicatorStyle(.gray)
        cell.imageView?.image = imageNames[index]
        cell.imageView?.contentMode = .scaleAspectFill
        cell.imageView?.clipsToBounds = true
        return cell
    }
    
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        pagerView.deselectItem(at: index, animated: true)
        pagerView.scrollToItem(at: index, animated: true)
        
        
        
    }
    
    
    
    
    
    
    fileprivate let transformerNames = ["cross fading", "zoom out", "depth", "linear", "overlap", "ferris wheel", "inverted ferris wheel", "coverflow", "cubic"]
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuListdisplay.removeAll()
        menuListdisplayData.removeAll()
        
        
        self.navigationController?.navigationBar.isHidden = true;
        
   
        
        self.pagerView.automaticSlidingInterval = 5.0
        
        self.pagerView.isInfinite = true
        
        self.pagerView.transformer = FSPagerViewTransformer(type: .zoomOut)
        
        
       
        if UI_USER_INTERFACE_IDIOM() == .phone {
            
            if screenSize.height == 812
            {
                navHieght.constant = 84;
            }
        }
        NotificationCenter.default.addObserver(self, selector: #selector(self.removePopUp(_:)), name: Notification.Name("popUpRemove"), object: nil)
        
        
        
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        if  !(menuListdisplay.count > 0)
        {
            serviceCall()
        }
       if menuHiddenView.isHidden {
        
        
        menuHiddenView.isHidden = false
       
        
        
        }
        let newMultiplier:CGFloat = 0.40
        myDemoConstraint = myDemoConstraint.setMultiplier(multiplier: newMultiplier)
        
        langchang()
        
        
          imageNames = fullImageNames
         self.pagerView.reloadData()
        
        
        self.tabBarController?.tabBar.isHidden = false
    }
    
    
    
    func langchang(){
        
         if userDefaults.GET_USERDEFAULTSSTATUS(objectValue:"language")  {
            
            
            langBtn.setImage(#imageLiteral(resourceName: "lan"), for: .normal)
            
            prisonerLbl.text =  "احكام الحق الخاص"
            othersLbl.text =  "مشاريع خيرية أخرى"
            
            
            
            
            prisonerLbl.font = UIFont(name:"HacenSudan", size: 14.0)
            othersLbl.font = UIFont(name:"HacenSudan", size: 14.0)
            
            
         }else{
            
            prisonerLbl.text =  "Prisoner"
            othersLbl.text =  "Others"
            langBtn.setImage(#imageLiteral(resourceName: "a"), for: .normal)
            prisonerLbl.font = UIFont(name:"GillSans", size: 16.0)
            othersLbl.font = UIFont(name:"GillSans", size: 16.0)
        }
        
        
      
    }
    
    
    
    
    
    
    
    @IBAction func langAction(_ sender: Any)
    {
        
        if userDefaults.GET_USERDEFAULTSSTATUS(objectValue:"language")  {
            
             userDefaults.SET_USERDEFAULTS(user_language: false, objectValue: "language")
            prisonerLbl.text =  "Prisoner"
            othersLbl.text =  "Others"
            langBtn.setImage(#imageLiteral(resourceName: "a"), for: .normal)
            prisonerLbl.font = UIFont(name:"GillSans", size: 16.0)
            othersLbl.font = UIFont(name:"GillSans", size: 16.0)
            
            
        }else{
            
            
            langBtn.setImage(#imageLiteral(resourceName: "lan"), for: .normal)
        
            
              userDefaults.SET_USERDEFAULTS(user_language: true, objectValue: "language")
            
            prisonerLbl.text =  "احكام الحق الخاص"
            othersLbl.text =  "مشاريع خيرية أخرى"
            
            prisonerLbl.font = UIFont(name:"HacenSudan", size: 14.0)
            othersLbl.font = UIFont(name:"HacenSudan", size: 14.0)
            
        }
        
        
        
        
        
        
      
        showLoaderlang()
        
      
        
    }
    @IBAction func menuHiddenViewAction(_ sender: Any) {
        
      menuHiddenView.isHidden = true
        
        
        imageNames = imageNameslist
        self.pagerView.reloadData()
        
        let newMultiplier:CGFloat = 0.25
        myDemoConstraint = myDemoConstraint.setMultiplier(multiplier: newMultiplier)

        showLoader()
        
    }
    
    
    @IBAction func menuPrisonerViewAction(_ sender: Any) {
        
        segueModel  = menuListdisplay[0]
        
        performSegue(withIdentifier: "subListSegue", sender: self)
        
    }
    
    
    @objc func removePopUp(_ notification: NSNotification){


        if menuHiddenView.isHidden {
            
            
            menuHiddenView.isHidden = false
            
            
            
        }
        let newMultiplier:CGFloat = 0.40
        myDemoConstraint = myDemoConstraint.setMultiplier(multiplier: newMultiplier)

        imageNames = fullImageNames
        self.pagerView.reloadData()
        
        
        
        
        
        
        
        
    }

    deinit {
        NotificationCenter.default.removeObserver(self, name: Notification.Name("popUpRemove"), object: nil)
    }
    
    
    
    func serviceCall()  {
        
        functionCall.delegete = self
        functionCall.getserviceCall(param: HomeServiceCallRepresenation(), tpye: BailAppBaseUrl+BailAppdasboard as NSString)
    }
    
    func GetServiceRespone(param: NSDictionary) {
        
        let   dict =  param.object(forKey: "data") as! NSDictionary
        
        
        
        if let value = dict["category"] {
            
            menuListdisplay.removeAll()
              menuListdisplayData.removeAll()
            
            for item in value as! Array<Any> {
                
                let obj = item as! NSDictionary
                
                let menu_Id : String = obj.object(forKey: "id")as? String ?? ""
                
                
                
                
                
                
                
                
                let menumodel = MenuDisplayModel(menuNameinit: obj["name"] as? String ?? "", menuIDinit: menu_Id, menuImageinit: obj["image"] as? String ?? "", menuLeftPannelImageinit: "",menu_arabicNameinit: obj["name_arabic"] as? String ?? "")
                
                
                menuListdisplay.append(menumodel)
                
                
                
                
                menuListdisplayData.append(menumodel)
                
                
            }
            
          
            
            
            newSharedInstance.categoryDetailsUpdate(marketIdInit:menuListdisplay)
            menuListdisplayData.remove(at: 0)
        }
        
         showLoader()
        
    }
    

    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return menuListdisplayData.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        
        let cell  = menuListCV.dequeueReusableCell(withReuseIdentifier: "MenuCellID", for: indexPath ) as! MenuCollectionViewCell
        
        
        configureMarketdisplayCell(cell: cell,forrowatindepath:indexPath as NSIndexPath)
        return cell
        
    }
    
    
    func configureMarketdisplayCell(cell:MenuCollectionViewCell,forrowatindepath indexPath:NSIndexPath){
        
        
        let modelData : MenuDisplayModel = menuListdisplayData[indexPath.row]
        
        cell.MenuImage.sd_setImage(with: URL(string: modelData.menu_Image), placeholderImage:UIImage(named: "noImage"))
        
      if userDefaults.GET_USERDEFAULTSSTATUS(objectValue:"language")  {
          
        
            
            cell.MenuHead.font = UIFont(name:"HacenSudan", size: 13.0)
  
            
              cell.MenuHead.text = modelData.menu_arabicName
        }
        else
        {
            
            cell.MenuHead.text = modelData.menu_Name
            
            cell.MenuHead.font = UIFont(name: "GillSans", size: 13.0)
        }
        
        
        
        cell.MenuCommingSoon.backgroundColor = UIColor(patternImage: UIImage(named: "commingSoon")!)
        
       
            cell.MenuCommingSoon.isHidden = false
     
        
        
        
        let width: CGFloat = cell.frame.size.width
        
        
        cell.MenuImageHieght.constant = width * 0.6
        cell.MenuImagewidth.constant = width * 0.6
        
      
        
        
    }
    
    
    @IBAction func showLoaderlang(){
        
        
        
        
        menuListCV.reloadData()
        menuListCV.layoutIfNeeded()
        
        self.menuListCV.showLoader()
        
        if timerTest == nil {
            timerTest =  Timer.scheduledTimer(
                timeInterval: TimeInterval(0.1),
                target      : self,
                selector    : #selector(HomeVC.removeLoader),
                userInfo    : nil,
                repeats     : false)
        }
        
        
        
    }
    
    


@IBAction func showLoader(){
    
    
    
    
    menuListCV.reloadData()
    menuListCV.layoutIfNeeded()
    
    self.menuListCV.showLoader()
    
    if timerTest == nil {
        timerTest =  Timer.scheduledTimer(
            timeInterval: TimeInterval(0.5),
            target      : self,
            selector    : #selector(HomeVC.removeLoader),
            userInfo    : nil,
            repeats     : false)
    }
    
    
    
}

@objc func removeLoader(){
    if timerTest != nil {
        timerTest?.invalidate()
        timerTest = nil
    }
    
    
    self.menuListCV.hideLoader()
    
    
    
}

    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height: CGFloat = collectionView.frame.size.height
        let width: CGFloat = collectionView.frame.size.width
        // in case you you want the cell to be 40% of your controllers view
        return CGSize(width: width * 0.33, height: height * 0.33)
    }
    
    

   //  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
   //     if indexPath.row == 0 {
   //        segueModel  = menuListdisplay[indexPath.row]

  //         performSegue(withIdentifier: "subListSegue", sender: self)
  //     }
     
   //  }
 
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "subListSegue") {
            let secondViewController = segue.destination as! ListSubVC
            secondViewController.modelGetData = segueModel
        }
    }
}


extension HomeVC{
    
    
    func HomeServiceCallRepresenation() -> [String : Any] {
        
        let parameters:[String : Any] = ["utoken":userDefaults.GET_USERDEFAULTS(objectValue:"utoken")]
        return parameters as [String : Any]
        
    }
}
extension NSLayoutConstraint {
    /**
     Change multiplier constraint
     
     - parameter multiplier: CGFloat
     - returns: NSLayoutConstraint
     */
    func setMultiplier(multiplier:CGFloat) -> NSLayoutConstraint {
        
        NSLayoutConstraint.deactivate([self])
        
        let newConstraint = NSLayoutConstraint(
            item: firstItem,
            attribute: firstAttribute,
            relatedBy: relation,
            toItem: secondItem,
            attribute: secondAttribute,
            multiplier: multiplier,
            constant: constant)
        
        newConstraint.priority = priority
        newConstraint.shouldBeArchived = self.shouldBeArchived
        newConstraint.identifier = self.identifier
        
        NSLayoutConstraint.activate([newConstraint])
        return newConstraint
    }
}
