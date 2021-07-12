//
//  RequestVC.swift
//  BailApp
//
//  Created by Monish M S on 01/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit

import SDWebImage
import Toast_Swift
import MobileCoreServices
import DropDown
import Alamofire


class RequestVC:UIViewController,UITextFieldDelegate,UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
     let categoryTypeDrop = DropDown()
    let donationTypeDrop = DropDown()
    
    
    @IBOutlet weak var categoryTxtFd: UITextField!
     @IBOutlet weak var donationtypeTxtFd: UITextField!
    @IBOutlet weak var nameofPersonTxtFd: UITextField!
    @IBOutlet weak var donationAmountTxtFd: UITextField!
      @IBOutlet weak var caseNumberTxtFd: UITextField!
    
    
    @IBOutlet weak var contactNoTxtFd: UITextField!
    @IBOutlet weak var ageTxtFd: UITextField!
    @IBOutlet weak var relationTxtFd: UITextField!
    @IBOutlet weak var addressTxtView: UITextView!
    
      @IBOutlet weak var descTxtView: UITextView!
     var imagePicker = UIImagePickerController()
     @IBOutlet weak var navHieght: NSLayoutConstraint!
    
    @IBOutlet weak var myselfHieght: NSLayoutConstraint!
    @IBOutlet weak var myselfviewHieght: NSLayoutConstraint!
    @IBOutlet weak var myselfTotalHieght: NSLayoutConstraint!
    @IBOutlet weak var myselfBottam: NSLayoutConstraint!
    @IBOutlet weak var myselfView: UIView!
    
    
    @IBOutlet weak var casenumberHieght: NSLayoutConstraint!
    @IBOutlet weak var casenumberView: UIView!
    
    
    
    
    
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    let functionCall = GetRespone()
    var genderString:String = "male"
    var categoryString:String = ""
     @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        self.setupUI()
        resetUI()
        
        
        
        
    }
    
    func resetUI(){
        
        casenumberHieght.constant = 10
        myselfHieght.constant = 0
        myselfviewHieght.constant = 440 + casenumberHieght.constant
        myselfTotalHieght.constant  = 550 + casenumberHieght.constant
        myselfBottam.constant = 0
        myselfView.isHidden = true
         casenumberView.isHidden = true
        
        
        
       categoryTxtFd.text = ""
     caseNumberTxtFd.text = ""
        donationtypeTxtFd.text = ""
        
       donationAmountTxtFd.text = ""
       
       ageTxtFd.text = ""
       relationTxtFd.text = ""
        addressTxtView.text = "Address"
        descTxtView.text = "Description"
        nameofPersonTxtFd?.text = ""
        
        contactNoTxtFd?.text = ""
    }
    
    func setupUI(){
        
        
        if UI_USER_INTERFACE_IDIOM() == .phone {
            
            if screenSize.height == 812 {
                navHieght.constant = 84;
            }
        }
        
        
        
        
        
        
        categoryTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.SELECTCATEGORYTEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        
        donationAmountTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.DonationTEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        
         donationtypeTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.DonationRequestTEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        
        caseNumberTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.CaseNumberTEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        
        
        
        
        nameofPersonTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.NameOFPersonTEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        
        contactNoTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.ContactNoTEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        ageTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.AgeText(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
         relationTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.RelationTEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        
        categoryTypeDrop.bottomOffset = CGPoint(x: 5, y: (categoryTxtFd?.frame.height)!)
        categoryTypeDrop.anchorView = categoryTxtFd
        categoryTypeDrop.direction = .any
        categoryTypeDrop.width = categoryTxtFd?.frame.width
        
        var categorypassArray:[String] = []
        
//        for item in newSharedInstance.categoryDetails {
//            categorypassArray.append(item.menu_Name)
//
//        }
        
        
        
        categoryTypeDrop.dataSource = ["Prisoner"]
        
        
        categoryTypeDrop.selectionAction = { [unowned self] (index: Int, item: String) in
            self.categoryTypeNameOn(index: index, item: item)
        }
        
    
        
        
        
        
        donationTypeDrop.bottomOffset = CGPoint(x: 5, y: (donationtypeTxtFd?.frame.height)!)
        donationTypeDrop.anchorView = donationtypeTxtFd
        donationTypeDrop.direction = .any
        donationTypeDrop.width = donationtypeTxtFd?.frame.width
        
     
        
        //        for item in newSharedInstance.categoryDetails {
        //            categorypassArray.append(item.menu_Name)
        //
        //        }
        
        
        
        donationTypeDrop.dataSource = ["My Self","Friends/Family"]
        
        
        donationTypeDrop.selectionAction = { [unowned self] (index: Int, item: String) in
            self.donationTypeNameOn(index: index, item: item)
        }
        
      
        
    }
    func categoryTypeNameOn(index: Int, item: String){
        
        
        
        categoryTxtFd?.text = item
        
        
        if item == "Prisoner" {
            
            casenumberHieght.constant = 65
       casenumberView.isHidden =  false
            myselfviewHieght.constant = 440 + casenumberHieght.constant + myselfHieght.constant
            myselfTotalHieght.constant  = 550 + casenumberHieght.constant + myselfHieght.constant
            
        }else{
            casenumberHieght.constant = 10
           casenumberView.isHidden =  true
            myselfviewHieght.constant = 440 + casenumberHieght.constant + myselfHieght.constant
            myselfTotalHieght.constant  = 550 + casenumberHieght.constant + myselfHieght.constant
            
        }
        
        
        
        
    }
    
    func donationTypeNameOn(index: Int, item: String){
        
        
        
        donationtypeTxtFd?.text = item
        
        
        
        
        if item == "My Self"  {
            
            myselfHieght.constant = 0
            myselfviewHieght.constant = 440 + casenumberHieght.constant
            myselfTotalHieght.constant  = 550 + casenumberHieght.constant
            myselfBottam.constant = 0
            myselfView.isHidden = true
            
        }
        else{
            myselfHieght.constant = 210
        
            myselfviewHieght.constant = 650 + casenumberHieght.constant
            myselfTotalHieght.constant  = 770 + casenumberHieght.constant
            
            myselfBottam.constant = 10
            myselfView.isHidden = false
            
        }
        
    }
    
    @IBAction func donationTypeAction(_ sender: Any) {
        
        
        donationTypeDrop.show()
    }
    
    
    @IBAction func categoryTypeAction(_ sender: Any) {
        
        
        categoryTypeDrop.show()
    }
    @IBAction func photochoose(_ sender: UIButton) {
        
        
        let actionSheetController = UIAlertController(title: LanguageHelper.PleaseselectTEXT(), message: "", preferredStyle: .actionSheet)
        
        let cancelActionButton = UIAlertAction(title: LanguageHelper.CancelTEXT(), style: .cancel) { action -> Void in
            print("Cancel")
        }
        actionSheetController.addAction(cancelActionButton)
        
        let saveActionButton = UIAlertAction(title: LanguageHelper.PhotoFromLibraryTEXT(), style: .default) { action -> Void in
            self.photoFromLibrary()
        }
        actionSheetController.addAction(saveActionButton)
        
        let deleteActionButton = UIAlertAction(title: LanguageHelper.ShootPhotoTEXT(), style: .default) { action -> Void in
            self.shootPhoto()
        }
        actionSheetController.addAction(deleteActionButton)
        self.present(actionSheetController, animated: true, completion: nil)
        
    }
    func photoFromLibrary() {
        
        
        
        
        
        
        
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        imagePicker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        imagePicker.modalPresentationStyle = .popover
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    func shootPhoto() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.allowsEditing = false
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.cameraCaptureMode = .photo
            imagePicker.mediaTypes = [kUTTypeImage as String]
            present(imagePicker,animated: true,completion: nil)
        } else {
            noCamera()
        }
    }
    
    //MARK: - Delegates
  
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        NSLog("\(info)")
        let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        myImageView.image = image
        self.dismiss(animated: true, completion: nil)
    }
   
    
    func noCamera(){
        
        
        
        Utilities.AlertActionDone(Title: "", Message: LanguageHelper.NoCameraEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(), setView: self.view)
        
        
        
        
        
    }
    
    
    func imageUpload(){
        
        
//
//        for item in newSharedInstance.categoryDetails {
//            if  item.menu_Name == categoryTxtFd.text {
//                categoryString = item.menu_Id
//
//            }
//
//        }
//
        categoryString = "1"
        
        let baseHappens:String = setlanguage() ? BailAppBaseUrl : FarminnoBaseUrlArabic
        if isInternetAvailable(){
            let xAxis = self.view.center.x
            let yAxis = self.view.center.y
            
            let frame = CGRect(x: (xAxis - 60), y: (yAxis - 60), width: 120, height:120)
            
            let myView = UIView(frame: frame)
            
            
            
            myView.backgroundColor = .white
            myView.layer.cornerRadius = 10
            myView.clipsToBounds = true
            
            
            let imageView = UIImageView()
           let animationArray = [#imageLiteral(resourceName: "Gif1"),#imageLiteral(resourceName: "Gif2"),#imageLiteral(resourceName: "Gif3"),#imageLiteral(resourceName: "Gif4"),#imageLiteral(resourceName: "Gif5"),#imageLiteral(resourceName: "Gif6"),#imageLiteral(resourceName: "Gif7"),#imageLiteral(resourceName: "Gif8"),#imageLiteral(resourceName: "Gif9")]
            
            
            
            
            
            imageView.frame = CGRect(x: (xAxis - 50), y: (yAxis - 50), width: 100, height: 100)
            
            
            
            
            let testView1: UIView = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height:  screenSize.height))
            testView1.backgroundColor = .clear
            let testView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height:  screenSize.height))
            
            
            
            testView.backgroundColor = .black
            testView.alpha = 0.3
            self.view.addSubview(testView1)
            
            testView1.addSubview(testView)
            testView1.addSubview(myView)
            testView1.addSubview(imageView)
            let animationView = UIImageView(frame: CGRect(x: 0, y: 0, width: imageView.frame.size.width, height: imageView.frame.size.height))
            animationView.backgroundColor = UIColor.white
            animationView.animationImages = animationArray
            animationView.animationDuration = 1.5
            animationView.animationRepeatCount = 0
            animationView.startAnimating()
            imageView.addSubview(animationView)
            
            imageView.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
            
            
            UIView.animate(withDuration: 2.0,
                           delay: 0,
                           usingSpringWithDamping: 0.2,
                           initialSpringVelocity: 6.0,
                           options: .allowUserInteraction,
                           animations: { [weak self] in
                            imageView.transform = .identity
                            
                },
                           completion: nil)
            
            let parameters = RequestServiceCallRepresenation()
            
            Alamofire.upload(multipartFormData: { (multipartFormData) in
                
                
               
               
          
                
                
                if (self.myImageView?.image != nil) {
                
                
                
                
                if  let imageData = UIImageJPEGRepresentation(self.myImageView.image!, 0.6){
                    
                     let data: Data = UIImageJPEGRepresentation(self.myImageView.image!, 0.6)!
                    if data.format == "image/jpeg"

                    {
                        multipartFormData.append(imageData, withName: "attachment", fileName: "file", mimeType: "image/jpeg")
                    }else{
                    
                        
                        multipartFormData.append(imageData, withName: "attachment", fileName: "file", mimeType: "image/png")
                        
                    }
                    
                    
                    
                    
                }
                
                
                }
                
                
                
                for (key, value) in parameters {
                    multipartFormData.append((value as AnyObject).data(using: String.Encoding.utf8.rawValue)!, withName: key)
                }
            }, to:"\(baseHappens)\(BailAppuserRequest)")
            { (result) in
                switch result {
                case .success(let upload, _, _):
                    
                    upload.uploadProgress(closure: { (progress) in
                        //Print progress
                        print("Encoding: \(progress)")
                    })
                    
                    upload.responseJSON { response in
                        print ("Image upload response : \(response)")
                        
                        testView1.removeFromSuperview()
                        
                        
                        switch response.result {
                        case .success(let data):
                            
                            
                            
                            
                            
                            let  responseObject =  response.result.value! as! NSDictionary
                            
                            
                            
                            let status = responseObject.value(forKey: "status") as! Int
                            
                            
                        
                                
                                if (status == 200){
                            
                           self.resetUI()
                                    _ = self.tabBarController?.selectedIndex = 0
                                    
                                
                            }
                        case .failure(let error):
                            
                            
                            
                            self.navigationController?.view.makeToast("Something Error in Uploading" + error.localizedDescription)
                            
                            
                        }
                    }
                    break
                case .failure(let encodingError):
                    
                    testView1.removeFromSuperview()
                    
                    Utilities.AlertActionDone(Title: "", Message: encodingError as? String ?? LanguageHelper.ErrorFoundedTEXT(), ButtonText: LanguageHelper.DONETEXT(),setView:self.view )
                    
                    break
                }
            }
            
        }
        else{
            
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.NoInternetEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),setView:self.view )
            
            
        }
        
    }
    
    
  
    func AlertActionNavigation(Title:String,Message:String,ButtonText : String ,setView :UIView) {
        
        MTPopUp(frame: setView.frame).show(complete: { (index) in
            print("INDEX : \(index)")
            
            
            
        }, view: setView, animationType: MTAnimation.FadeIn_FadeOut, strMessage: Message, btnArray: [ButtonText])
        
        
    }
    
        func requiredFieldMyselfValidation(){
            
            
            if HelperClass.TEXTFIELDIsEmpty(value: donationAmountTxtFd!){
                
                Utilities.AlertActionDone(Title: "", Message: LanguageHelper.DonationEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
                
            }
                
                
            else if HelperClass.TEXTVIEWEmpty(value: descTxtView!) || descTxtView.text == "Description"{
                
                Utilities.AlertActionDone(Title: "", Message: LanguageHelper.DescriptionFieldEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
                
            }
            else if HelperClass.TEXTVIEWEmpty(value: addressTxtView!) || addressTxtView.text == "Address"{
                
                Utilities.AlertActionDone(Title: "", Message: LanguageHelper.ADDRESSTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
                
            }
            else{
                if  userDefaults.GET_USERDEFAULTSSTATUS(objectValue: "loginComplete") {
                    
                    self.imageUpload( )
                    
                }else{
                    
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "LogicVCID") as! LogicVC
                    
                    self.present(vc, animated: true, completion: nil)
                    
                }
                
                
            }
    
    }
    
    
    
    
    func requiredFieldValidation(){
        
        if HelperClass.TEXTFIELDIsEmpty(value: donationtypeTxtFd!){
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.DonationRequestEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
            
            
        }
        else if donationtypeTxtFd?.text != "My Self"
        {
            if HelperClass.TEXTFIELDIsEmpty(value: nameofPersonTxtFd!){
                
                Utilities.AlertActionDone(Title: "", Message: LanguageHelper.NameofPersonEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
                
            }
            else if HelperClass.TEXTFIELDIsEmpty(value: contactNoTxtFd!){
                
                Utilities.AlertActionDone(Title: "", Message: LanguageHelper.ContactNoEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
                
            }
            else if  (contactNoTxtFd.text?.characters.count)!<6{
                
                Utilities.AlertActionDone(Title: "", Message: LanguageHelper.ContactNumberInvaildTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
                
            }
                
            else if HelperClass.TEXTFIELDIsEmpty(value: ageTxtFd!){
                
                Utilities.AlertActionDone(Title: "", Message: LanguageHelper.AgeEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
                
            }
            else if HelperClass.TEXTFIELDIsEmpty(value: relationTxtFd!){
                
                Utilities.AlertActionDone(Title: "", Message: LanguageHelper.RelationEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
                
            }else{
            
            requiredFieldMyselfValidation()
                
            }
            
        }
            
        else {
            
            requiredFieldMyselfValidation()
            
        }
        
    }
    
    
    @IBAction func RegisterAction(_ sender: Any) {
        
        if HelperClass.TEXTFIELDIsEmpty(value: categoryTxtFd!) {
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.SelectCategoryText(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
            
        }else if categoryTxtFd?.text == "Prisoner"
            
        {
            
            if HelperClass.TEXTFIELDIsEmpty(value: caseNumberTxtFd!){
                
                Utilities.AlertActionDone(Title: "", Message: LanguageHelper.CaseNONumberTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
                
            }else{
                
                requiredFieldValidation()
            }
            
        }
        else{
            
            
            requiredFieldValidation()
        }
            
            
    
    }
    
    @IBAction func genderAction(_ sender: UIButton) {
        if (genderString == "male") {
            maleButton.setImage(#imageLiteral(resourceName: "radio"), for: .normal)
            femaleButton.setImage(#imageLiteral(resourceName: "s_radio"), for: .normal)
            genderString = "female"
        }else{
            femaleButton.setImage(#imageLiteral(resourceName: "radio"), for: .normal)
            maleButton.setImage(#imageLiteral(resourceName: "s_radio"), for: .normal)
            genderString = "male"
            
        }
        
    }
    
    
    @IBAction func tapGestureaction(_ sender: Any) {
        
       addressTxtView?.resignFirstResponder()
        donationAmountTxtFd?.resignFirstResponder()
        nameofPersonTxtFd?.resignFirstResponder()
        contactNoTxtFd?.resignFirstResponder()
        relationTxtFd?.resignFirstResponder()
         ageTxtFd?.resignFirstResponder()
        caseNumberTxtFd?.resignFirstResponder()
    }
    //TODO:- Text Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        switch (textField){
        case donationAmountTxtFd!:
            nameofPersonTxtFd?.becomeFirstResponder()
            break
        case nameofPersonTxtFd!:
            contactNoTxtFd?.becomeFirstResponder()
            break
        case contactNoTxtFd!:
            ageTxtFd?.becomeFirstResponder()
            break
        case ageTxtFd!:
            relationTxtFd?.becomeFirstResponder()
            break
            
        case relationTxtFd!:
            addressTxtView?.becomeFirstResponder()
            break
  
        default:
            textField.resignFirstResponder()
            break
            
        }
        return true
    }
    
   
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        if textView == addressTxtView {
        
        
        
        if textView.text == "Address" {
            textView.text = nil
            
        }
            
        }else{
            
            if textView.text == "Description" {
                textView.text = nil
                
            }
            
        }
    }
    func textViewDidEndEditing(_ textView: UITextView) {
         if textView == addressTxtView {
        
        if textView.text.isEmpty  {
            textView.text = "Address"
           
        }
            
         }else{
            if textView.text.isEmpty  {
            textView.text = "Description"
            }
        }
    }
}
extension RequestVC{
    
    
    
    func RequestServiceCallRepresenation() -> [String : Any] {
        var parameters:[String : Any] = [:]
        
        
        if donationtypeTxtFd?.text == "My Self"
        {
            
            if categoryTxtFd?.text == "Prisoner"
                
            {
            
            parameters = ["category_id":categoryString,"caseno":caseNumberTxtFd?.text ?? "","donation_for":"0","donation":donationAmountTxtFd?.text ?? "","address1":addressTxtView?.text ?? "","description":descTxtView?.text ?? "","utoken":userDefaults.GET_USERDEFAULTS(objectValue:"utoken")]
                
                
            }else{
                
                parameters = ["category_id":categoryString,"donation_for":"0","donation":donationAmountTxtFd?.text ?? "","address1":addressTxtView?.text ?? "","description":descTxtView?.text ?? "","utoken":userDefaults.GET_USERDEFAULTS(objectValue:"utoken")]
                
            }
            
        }else{
            
            if categoryTxtFd?.text == "Prisoner"
                
            {
 parameters = ["category_id":categoryString,"caseno":caseNumberTxtFd?.text ?? "","donation_for":"1","donation":donationAmountTxtFd?.text ?? "","name":nameofPersonTxtFd?.text ?? "","contact":contactNoTxtFd?.text ?? "","age":ageTxtFd?.text ?? "","gender":genderString,"relation":relationTxtFd?.text ?? "","address1":addressTxtView?.text ?? "","description":descTxtView?.text ?? "","utoken":userDefaults.GET_USERDEFAULTS(objectValue:"utoken")]
                
            }else{
                
                parameters = ["category_id":categoryString,"donation_for":"1","donation":donationAmountTxtFd?.text ?? "","name":nameofPersonTxtFd?.text ?? "","contact":contactNoTxtFd?.text ?? "","age":ageTxtFd?.text ?? "","gender":genderString,"relation":relationTxtFd?.text ?? "","address1":addressTxtView?.text ?? "","description":descTxtView?.text ?? "","utoken":userDefaults.GET_USERDEFAULTS(objectValue:"utoken")]
                
            }
            
            
        }
        return parameters as [String : Any]
        
        
        
        
    }
    
}
extension Data {
    var format: String {
        let array = [UInt8](self)
        let ext: String
        switch (array[0]) {
        case 0xFF:
            ext = "image/jpeg"
        case 0x89:
            ext = "image/png"
        case 0x47:
            ext = "gif"
        case 0x49, 0x4D :
            ext = "tiff"
        default:
            ext = "unknown"
        }
        return ext
    }
}
