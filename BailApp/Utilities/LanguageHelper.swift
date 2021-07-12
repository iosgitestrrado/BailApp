//
//  LanguageHelper.swift
//  farminno
//
//  Created by Ajesh Mac Mini2 on 10/6/17.
//  Copyright © 2017 Ajesh Mac Mini2. All rights reserved.
//

import UIKit

class LanguageHelper: NSObject {

    static  func LEGALNOTICETEXT() -> String  {
       let whatHappens:String = setlanguage() ? "LEGAL NOTICE" : "اشعار قانوني"
    
        return whatHappens
    }
    static  func GPSTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "GPS is not enabled. Do you want to go to settings menu?" : "نظام تحديد المواقع غير مفعل. هل تود الذهاب الى صفحة الاعدادات"
        
        return whatHappens
    }
    static  func howitTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "User manual" : "طريقة الاستخدام"
        
        return whatHappens
    }
    
    
    static  func AnimalCategoryTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Animal Category" : "نوع الحيوان"
        
        return whatHappens
    }
    static  func familyTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Family Tree" : "شجرة العائلة"
        
        return whatHappens
    }
    
    static  func PrivacyTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Privacy Policy" : "سياسة الخصوصية"
        
        return whatHappens
    }
    static  func KmawayTEXT() -> String  {
        let whatHappens:String = setlanguage() ? " Km Away" : "كم بعيدا "
        
        return whatHappens
    }
    static  func SENDTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "SEND" : "إرسال"
        
        return whatHappens
    }
 
    static  func BlockTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "BLOCK " : " حظر  "
        
        return whatHappens
    }
    static  func UnblockTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "UNBLOCK " :" ازالة الحظر "
        
        return whatHappens
    }
    
    static  func teamsTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Teams & Conditions" : "الشروط احكامنا"
        
        return whatHappens
    }
    
    static  func ACCEPTTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "I Accept" : "موافق"
   
        return whatHappens
    }
    static  func USERLOGINTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "USER LOGIN" : "دخول المستخدم"
    
        return whatHappens
    }
    static  func EMAILTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Email id" : "البريد الألكتروني"
 
        return whatHappens
    }
    static  func PASSWORDTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Password" : "كلمة المرور"
 
        return whatHappens
    }
    
    static  func NameOFPersonTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Name of Person" : "كلمة المرور"
        
        return whatHappens
    }
    
    static  func DonationTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Donation Amount" : "كلمة المرور"
        
        return whatHappens
    }
    static  func DonationRequestTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Donation For Request" : "كلمة المرور"
        
        return whatHappens
    }
    static  func CaseNumberTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "CaseNumber" : "كلمة المرور"
        
        return whatHappens
    }
    static  func CaseNONumberTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "CaseNumber  Empty" : "كلمة المرور"
        
        return whatHappens
    }
    
    
    
    
    static  func ContactNoTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Contact No" : "كلمة المرور"
        
        return whatHappens
    }
    
    static  func RelationTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Relation" : "كلمة المرور"
        
        return whatHappens
    }
    
    
    
    
    
    
    static  func FORGOTPASSWOEDTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Forgot password?" : "نسيت كلمة المرور؟"
  
        return whatHappens
    }
    static  func LOGINTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "LOGIN" : "تسجيل دخول"
       
        return whatHappens
    }
    static  func DOYOUHAVETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Don't have an account? " : "ليس لديك حساب؟"
      
        return whatHappens
    }
    static  func REGISTERTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Register now!" : "سجل الآن!"
       
        return whatHappens
    }
    
    static  func DONETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "DONE" : "تم"
        
        return whatHappens
    }
    static  func FORGOTHEADTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "FORGOT PASSWORD" : "نسيت كلمة المرور"
        
        return whatHappens
    }
    
    static  func NAMETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Name " : "الاسم"
        
        return whatHappens
    }
    static  func CODETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Code" : "الرمز"
        
        return whatHappens
    }
    static  func REGTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "REGISTER " : "التسجيل"
        
        return whatHappens
    }
    static  func PHONETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Phone" : "رقم الهاتف"
        
        return whatHappens
    }
    static  func SexTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Sex" : "الجنس"
        return whatHappens
    }
    
    static  func ALREADYTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Already have an account? " : "لديك حساب مسبقا؟"
        
        return whatHappens
    }
    static  func SIGNINTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Sign in now!" : "سجل الآن!"
        
        return whatHappens
    }
    static  func USERREGTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "USER REGISTRATION" : "تسجيل مستخدم"
        
        return whatHappens
    }
    static  func LOCATIONTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Location" : "الموقع"
        
        return whatHappens
    }
    static  func ConfirmPassswordTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "ConfirmPasssword" : "الموقع"
        
        return whatHappens
    }
    
    
    
    
    
    
    
    
    static  func OTPEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "OTP Empty" : "كلمة المرور المؤقتة فارغة"
        
        return whatHappens
    }
    
    static  func OTPTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "OTP" : "رمز التفعيل"
        
        return whatHappens
    }
    static  func RESENDTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Resend" : "إعادة إرسال"
        
        return whatHappens
    }
    static  func SUBMITTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "SUBMIT" : "ادخال"
        
        return whatHappens
    }
    static  func VERIFICATIONTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "SMS VERIFICATION" : "التحقق برسالة نصية"
        
        return whatHappens
    }
    
    static  func CONFIRMTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Your Farminoo Confirmation SMS send to" : "تم ارسال رسالة نصية لتفعيل حسابك الى"
        
        return whatHappens
    }
   
    static  func TRANSACTIONDescriptionTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Transaction Description" : "وصف المعاملة"
        
        return whatHappens
    }
    static  func farmsTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Farms" : "العزب الخاصة بي"
        
        return whatHappens
    }
    
  
    static  func TRANSACTIONSTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "ENTER TRANSACTION" : "ادخل معاملة"
        
        return whatHappens
    }
    static  func REPORTTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "GENERATE REPORT" : "طلب تقرير"
        
        return whatHappens
    }
    
   
    
    static  func OOPSTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Oops..." : "حدث خطأ.."
        
        return whatHappens
    }
    
    
    
    static  func REPORTONTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "REPORT" : "تقرير"
        
        return whatHappens
    }
    
    static  func SPAMTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Spam" : "محتوى غير مرغوب فيه"
        
        return whatHappens
    }
    
    static  func FRAUDTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Fraud" : "احتيال"
        
        return whatHappens
    }
    static  func SELECTCATEGORYTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Select category" : "خانة نوع الحيوان فارغة"
        
        return whatHappens
    }
    static  func chatlistTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "CHAT" : "محادثة"
        
        return whatHappens
    }
    static  func chatTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "CHAT" : "محادثة"
        
        return whatHappens
    }
    static  func SPAM1TEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Miscategorised" : "تصنيف غير صحيح"
        
        return whatHappens
    }
    static  func donthaveDevicetokenTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Please Re - login to get instant chats" : "يرجى تسجيل الدخول لتلقي الرسائل الفورية"
        
        return whatHappens
    }
    static  func FRAUD1TEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Repeting Listing" : "عرض مكرر"
        
        return whatHappens
    }
    static  func FRAUD2TEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Others" : "اخرى"
        
        return whatHappens
    }
    

    
    static  func FAVORITETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "FAVORITE" : "المفضلة"
        
        return whatHappens
    }
    
   
    
    static  func NOTIFICATIONTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "NOTIFICATIONS" : "إشعارات"
        
        return whatHappens
    }
    
    
    static  func OLDPASSSWORDTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Old Password" : "كلمة المرور القديمة"
        
        return whatHappens
    }
    static  func NEWPASSWORDTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "New Password" : "كلمة المرور الجديدة"
        
        return whatHappens
    }
    static  func CONFIRMPASSWORDTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Confirm Password" : "تأكيد كلمة المرور"
        
        return whatHappens
    }
    static  func CHANGEPASSWORDTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "CHANGE PASSWORD" : "تغيير كلمة المرور"
        
        return whatHappens
    }
    static  func UPDATETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "UPDATE" : "تحديث"
        
        return whatHappens
    }
    static  func CHANGEMOBILETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "CHANGE MOBILE" : "غير رقم الهاتف"
        
        return whatHappens
    }
   
    static  func INVITEFRIENDSTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Invite Friends" : "دعوة أصدقاء"
        
        return whatHappens
    }
    static  func USERPROFILETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "User Profile" : "ملف المستخدم"
        
        return whatHappens
    }
    static  func MYPROFILETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "MY PROFILE" : "ملفي الشخصي"
        
        return whatHappens
    }

    static  func EDITPROFILETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "EDIT PROFILE" : "تعديل الملف الشخصي"
        
        return whatHappens
    }
    static  func CATTLEMARKETTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "LIVESTOCK MARKET" : "سوق الحلال"
        return whatHappens
    }
    
    
    
    static  func BreedingStallionTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Breeding Stallions" : "فحول الإنتاج"
        return whatHappens
    }
    static  func CATTLEMANAGEMENTTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "LIVESTOCK MANAGEMENT" : "ادارة الحلال"
        return whatHappens
    }
    
    
    static  func SELECTANOPTIONTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Select an Option" : "حدد اختيار"
        return whatHappens
    }
    static  func ENTERMESSAGETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Enter Message" : "ادخل رسالة"
        return whatHappens
    }
    
    static  func DESCRIPTIONTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Description :" : "الوصف"
        return whatHappens
    }
    static  func DESCRIPTIONDotTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Description" : "الوصف"
        return whatHappens
    }
    
    static  func NOTESTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Notes :" : "ملاحظات:"
        return whatHappens
    }
    static  func REMARKSTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Remarks :" : "ملاحظات:"
        return whatHappens
    }
    static  func REMARKSDotTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Remarks " : "ملاحظات"
        return whatHappens
    }
    
    static  func ADDRESSTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Address is Empty :" : "العنوان"
        return whatHappens
    }
    
    static  func SENDMAILTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "SEND MAIL" : "ارسل بريد ألكتروني"
        return whatHappens
    }
    static  func ABOUTTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "ABOUT US" : "طريقة الاستخدام"
        return whatHappens
    }
    
    static  func EnquiryTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Enquiry" : "استفسار"
        return whatHappens
    }
    
    static  func SuggestionTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Suggestion" : "اقتراح"
        return whatHappens
    }
    
    static  func ComplaintsTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Complaints" : "شكوى"
        return whatHappens
    }
    static  func BusinessTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Business" : "للأعمال"
        return whatHappens
    }
    static  func PleaseentermessageTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Please enter message" : "يرجى ادخال رسالة"
        return whatHappens
    }
    static  func PleaseselectanOptionTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Please select an Option" : "يرجى تحديد احد الاختيارات"
        return whatHappens
    }
    static  func SuccessTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Success" : "نجاح"
        return whatHappens
    }
    static  func EmailIdEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Email Id Empty" : "البريد الألكتروني فارغ"
        return whatHappens
    }
    
    static  func DonationEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Donation Amount Empty" : "البريد الألكتروني فارغ"
        return whatHappens
    }
    
    static  func DonationRequestEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Donation For Request Empty" : "البريد الألكتروني فارغ"
        return whatHappens
    }
    
    static  func NameofPersonEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Name of Person Empty" : "البريد الألكتروني فارغ"
        return whatHappens
    }
    
    
    
    
    
    
    
       static  func EmailIdNotValidTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Email Id Not valid"  : "البريد الألكتروني غير صحيح"
        return whatHappens
    }
    
    static  func PasswordEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Password Empty"  : "خانة كلمة المرور فارغة"
        return whatHappens
    }
    static  func RelationEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Relation Empty"  : "خانة كلمة المرور فارغة"
        return whatHappens
    }
    
    
    static  func NameEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Name Empty"  : "خانة الإسم فارغة"
        return whatHappens
    }
    
   
    static  func LocationEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Location Empty"  : "خانة تحديد الموقع فارغة"
        return whatHappens
    }
    
    static  func PhoneEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Phone Empty"  : "خانة رقم الهاتف فارغة"
        return whatHappens
    }
    static  func ContactNoEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Contact No Empty"  : "خانة رقم الهاتف فارغة"
        return whatHappens
    }
    
    
    
    static  func AgeEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Age  Field Empty"  : "خانة العمر فارغة"
        return whatHappens
    }
    static  func PriceEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Price Field Empty"  : "خانة السعر فارغة"
        return whatHappens
    }
    static  func OldPasswodEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Old Passwod Empty"  : "خانة كلمة المرور القديمة فارغة"
        return whatHappens
    }
    static  func NewPasswodEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "New Passwod Empty"  : "خانة كلمة المرور الجديدة فارغة"
        return whatHappens
    }
    static  func ConfirmPasswodEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Confirm Passwod Empty"  : "خانة تأكيد كلمة المرور فارغة"
        return whatHappens
    }
    static  func OldPasswodWrongTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Old Passwod Wrong"  : "كلمة المرور القديمة غير صحيحة"
        return whatHappens
    }
    static  func PasswordarenotsameTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Password are not same"  : "كلمات المرور غير متطابقة"
        return whatHappens
    }
    static  func AnimalFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Animal Field Empty"  : "خانة الحيوان فارغة"
        return whatHappens
    }
    static  func BreedFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Breed Field Empty"  : "خانة السلالة فارغة"
        return whatHappens
    }
    static  func RegisterNumberFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Register Number Field Empty"  : "خانة رقم التسجيل فارغة"
        return whatHappens
    }
    static  func WeightFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Weight Field Empty"  : "خانة الوزن فارغة"
        return whatHappens
    }
    static  func DescriptionFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Description Field Empty"  : "خانة الوصف فارغة"
        return whatHappens
    }
    static  func AmountFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Amount Field Empty"  : "خانة السعر فارغة"
        return whatHappens
    }
    static  func DateFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Date Field Empty"  : "خانة التاريخ فارغة"
        return whatHappens
    }
    
    static  func kgTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Kg"  : "كيلو جرام"
        return whatHappens
    }
    static  func NotificatinTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Notification"  : "اشعار"
        return whatHappens
    }
    
    
    
    static  func FarmNameFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Farm Name Field Empty"  : "خانة اسم العزبة فارغة"
        return whatHappens
    }
    static  func FarmNumberFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Farm Number Field Empty"  : "خانة رقم العزبة فارغة"
        return whatHappens
    }
    static  func SelectCountryFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Select Country Field Empty"  : "خانة الدولة فارغة"
        return whatHappens
    }
    static  func SelectCityFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?  "Select City Field Empty"  : "حانة المدينة فارغة"
        return whatHappens
    }
    static  func  DateofBirthFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?   "Date of Birth Field Empty"  : "خانة تاريخ الميلاد فارغة"
        return whatHappens
    }
    
    static  func  DateofDeathFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?   "Date of Death Field Empty"  : "خانة تاريخ الوفاة فارغة"
        return whatHappens
    }
    static  func  NotesFieldEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?   "Notes Field Empty"  : "خانة الملاحظات فارغة"
        return whatHappens
    }
    static  func  NoCameraEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?   "Sorry, this device has no camera"  : "نأسف، هذا الجهاز ليس به كاميرا"
        return whatHappens
    }
    static  func  NoInternetEmptyTEXT() -> String  {
        let whatHappens:String = setlanguage() ?   "Please add your  device in a Internet connection"  : "يرجى التاكد من اتصال جهازك بالانترنت"
        return whatHappens
    }
    static  func  PhoneNumberInvaildTEXT() -> String  {
        let whatHappens:String = setlanguage() ?   "Phone Number Invaild"  : "رقم الهاتف غير صحيح"
        return whatHappens
    }
    static  func  ContactNumberInvaildTEXT() -> String  {
        let whatHappens:String = setlanguage() ?   "Contact Number Invaild"  : "رقم الهاتف غير صحيح"
        return whatHappens
    }
    static  func  OTPNumberInvaildTEXT() -> String  {
        let whatHappens:String = setlanguage() ?   "OTP Number Invaild"  : "كلمة المرور المؤقتة غير صحيحة"
        return whatHappens
    }
    static  func  PasswordInvaildTEXT() -> String  {
        let whatHappens:String = setlanguage() ?   "Password must be between 6-32 characters."  : "كلمة المرور يجب ان تكون بين 6-32 رمز"
        return whatHappens
    }
    
    static  func  ErrorFoundedTEXT() -> String  {
        let whatHappens:String = setlanguage() ?   "Please Retry Again"  : "يرجى المحاولة مرة اخرى"
        return whatHappens
    }
    static  func  PleaseAddOneImageTEXT() -> String  {
        let whatHappens:String = setlanguage() ?   "Please Add One Image"  : "يرجى ادخال صورة واحدة"
        return whatHappens
    }
    //TODO:- Flip Data
    
    
    
    static  func FAVORITEFLIPTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Favorite" : "اشعار"
        
        return whatHappens
    }
    static  func EDITPROFILEFLIPTEXT() -> String  {
        
        if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") != "markert" {
            
        let whatHappens:String = setlanguage() ? "My Profile" : "السوق"
             return whatHappens
            
        }else{
            
            let whatHappens:String = setlanguage() ? "My Profile" : "الفحول"
            return whatHappens
            
        }
        
       
    }
    
    static  func ChatPROFILEFLIPTEXT() -> String  {
        
         if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") != "markert" {
            
        let whatHappens:String = setlanguage() ? "Chat" : "الفحول"
             return whatHappens
            
         }
         else{
            
             let whatHappens:String = setlanguage() ? "Chat" : "السوق"
             return whatHappens
        }
       
    }
    
    static  func HOMEFLIPTEXT() -> String  {
        
        var whatHappens:String = ""
        if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") == "management" {
            
            whatHappens = setlanguage() ? "My Farm" : "تقرير"
            
        }else{
             if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") != "markert" {
                
            whatHappens = setlanguage() ? "Stallions" : "الملف الشخصي"
                
             }else{
                
                
                    whatHappens = setlanguage() ? "Market" : "الملف الشخصي"
               
            }
            
        }
        
        
        
        return whatHappens
    }
    
    
    
    
    static  func CHATFLIPTEXT() -> String  {
        
        var whatHappens:String = ""
        if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") == "management" {
            
            whatHappens = setlanguage() ? "My Farm" : "تقرير"
            
        }else{
            
            if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") != "market" {
                
                  whatHappens = setlanguage() ? "Stallions" : "محادثة"
            }else{
                  whatHappens = setlanguage() ? "Market" : "محادثة"
                
            }
            
          
            
        }
        
        
        
        return whatHappens
    }
    static  func NOTIFICATIONFLIPTEXT() -> String  {
        
        
        var whatHappens:String = ""
        
        if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") == "management" {
            
            whatHappens = setlanguage() ? "Notification" : "المعاملات"
            
        }else{
            whatHappens = setlanguage() ? "Notification" : "المفضلة"
            
        }
        
        return whatHappens
        
        
       
    }
    static  func TRANSACTIONSFLIPTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Transactions" : "اشعار"
        return whatHappens    }
    
 static  func REPORTFLIPTEXT() -> String  {
    let whatHappens:String = setlanguage() ? "Report" : "عزبتي"
    return whatHappens
    
    }
    
 
    
    static  func DASHCHANGELANGTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "CHANGE LANGUAGE" : "تغيير اللغة"
        return whatHappens    }
    
    static  func DASHSIGNOUTTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "SIGN OUT" : "تسجيل خروج:"
        return whatHappens
        
    }
    

    
    static  func DASHMAINTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "MANAGEMENT / MARKET" : "إدارة الحلال / السوق"
        return whatHappens
        
    }
    static  func ExpenseTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Expense" : "تكاليف"
        return whatHappens
        
    }
    static  func RevenueTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Revenue" : "إيرادات"
        return whatHappens
        
    }
    static  func inThhisTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "I am interested in this " : " انا مهتم ب "
        return whatHappens
        
    }
    
    
    
    static  func YesTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Yes" : "نعم"
        return whatHappens
        
    }
    static  func NoTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "No" : "لا"
        return whatHappens
        
    }
    
    static  func AnimalTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Animal" : "حيوان"
        return whatHappens
        
    }
    static  func BreedTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Breed" : "السلالة"
        return whatHappens
        
    }
    
    static  func DateFromTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Date From" : "من تاريخ"
        return whatHappens
        
    }
    static  func DateToTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Date To" : "الى تاريخ"
        return whatHappens
        
    }
    
    static  func NewBornTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "New Born" : "مولود جديد"
        return whatHappens
        
    }
    static  func SoldTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Sold" : "تم بيعه"
        return whatHappens
        
    }
    static  func DeathTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Death" : "وفاة"
        return whatHappens
        
    }
    static  func PurchasedTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Purchased" : "تم شراءه"
        return whatHappens
        
    }
    static  func REMOVEDTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Removed" : "تمت إزالته"
        return whatHappens
        
    }
    static  func ADDCATTLETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Add Livestock" : "إضافة حيوان"
        return whatHappens
        
    }
    static  func CITYTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "City" : "المدينة"
        return whatHappens
        
    }
    static  func CountryTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Country" : "البلد"
        return whatHappens
        
    }
    
    static  func KeyWordsTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Key Words" : "الكلمات الدالة"
        return whatHappens
        
    }
    static  func GenderTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Gender" : "الجنس"
        return whatHappens
        
    }
    static  func SAVETEXT() -> String  {
        let whatHappens:String = setlanguage() ? "SAVE" : "حفظ"
        return whatHappens
        
    }
    static  func NameofCattleTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Name of Cattle" : "اسم الحيوان"
        return whatHappens
        
    }
    static  func RegistrationNumberTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Registration Number" : "رقم التسجيل"
        return whatHappens
        
    }
    static  func PregnacyconfirmDateTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Pregnacy confirm Date" : "تاريخ اللقاح / المناخ "
        return whatHappens
        
    }
    static  func YearTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Year" : "سنة"
        return whatHappens
        
    }
    static  func MonthTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Month" : "شهر"
        return whatHappens
        
    }
    static  func DayTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Day" : "يوم"
        return whatHappens
        
    }
    
    
    static  func MyFarmDetailsTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "My Farm Details" : "بيانات عزبتي"
        return whatHappens
        
    }
    static  func DelivaryDateTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Delivery Date" : "تاريخ الولادة"
        return whatHappens
        
    }
    static  func WeightkgTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Weight(kg)" : "الوزن (كيلو غرام)"
        return whatHappens
        
    }
    
    
    static  func WeightTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Weight" : "الوزن"
        return whatHappens
        
    }
    static  func SoldAmountTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Sold Amount" : "مبلغ البيع"
        return whatHappens
        
    }
    static  func SoldDateTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Sold Date" : "تاريخ البيع"
        return whatHappens
        
    }
    static  func PurchaseAmountTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Purchase Amount" : "مبلغ الشراء"
        return whatHappens
        
    }
    static  func PurchaseDateTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Purchase Date" : "تاريخ الشراء"
        return whatHappens
        
    }
    static  func DateofBirthTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Date of Birth" : "تاريخ الميلاد"
        return whatHappens
        
    }
    static  func RegistrationNumberofMotherTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Registration Number of Mother" : "رقم تسجيل الأم"
        return whatHappens
        
    }
    static  func RegistrationNumberofFatherTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Registration Number of Father" : "رقم تسجيل الأب"
        return whatHappens
        
    }
    
    static  func DateofDeathTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Date of Death" : "تاريخ الوفاة"
        return whatHappens
        
    }
    static  func UPDATEMYFARMTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "UPDATE MY FARM" : "تحديث بيانات العزبة "
        return whatHappens
        
    }
    static  func FARMREGISTRATIONTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "FARM REGISTRATION" : "تسجيل عزبة"
        return whatHappens
        
    }

    
    static  func FarmNameTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Farm Name" : "اسم العزبة"
        return whatHappens
        
    }
    
    static  func FarmNumberTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Farm Number" : "رقم العزبة"
        return whatHappens
        
    }
    static  func FromTimeTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "From Time" : "من الساعة"
        return whatHappens
        
    }
    static  func ToTimeTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "To Time" : "إلى الساعة"
        return whatHappens
        
    }
    static  func NoplaceselectedTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "No place selected" : "لم تقم بتحديد الموقع"
        return whatHappens
        
    }
    static  func CancelTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Cancel" : "إلغاء"
        return whatHappens
        
    }
    
    
    static  func PleaseselectTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Please select" : "الرجاء اختيار الحيوان"
        return whatHappens
        
    }
    
    static  func PhotoFromLibraryTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Photo From Library" : "صورة من مكتبة الصور"
        return whatHappens
        
    }
    static  func ShootPhotoTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Shoot Photo" : "إلتقاط صورة"
        return whatHappens
        
    }
    static  func SelectDateofTransactionTEXT() -> String  {
        let whatHappens:String = setlanguage() ? "Select Date of Transaction" : "اختر تاريخ المعاملة"
        return whatHappens
        
    }
    static  func AmountText() -> String  {
        let whatHappens:String = setlanguage() ? "Amount" : "المبلغ"
        return whatHappens
        
    }
    static  func SelectTransactionTypeText() -> String  {
        let whatHappens:String = setlanguage() ? "Select Transaction Type" : "اختر نوع المعاملة"
        return whatHappens
        
    }
    static  func  AgeText() -> String  {
        let whatHappens:String = setlanguage() ? "Age" : "العمر"
        return whatHappens
        
    }
    
    static  func  AgeImage() -> String  {
        let whatHappens:String = setlanguage() ? "Dob" : "Dobarb"
        return whatHappens
        
    }
    
    static  func  PriceText() -> String  {
        let whatHappens:String = setlanguage() ? "Price" : "السعر"
        return whatHappens
        
    }
    static  func  MovetoBreedingText() -> String  {
        let whatHappens:String = setlanguage() ? "Move to Breeding Stallions" : "عرض في فحول الانتاج"
        return whatHappens
        
    }
    static  func  RemovefromBreedingText() -> String  {
        let whatHappens:String = setlanguage() ? "Remove from Breeding Stallions" : "ازالة من فحول الانتاج"
        return whatHappens
        
    }
    static  func ProceedText() -> String  {
        let whatHappens:String = setlanguage() ? "Proceed" : "انجاز"
        return whatHappens
        
    }
    static  func  WanttomovetoBreedingStallionsText() -> String  {
        let whatHappens:String = setlanguage() ? "Want to offer your Stallions in this page?" : "هل تريد عرض فحل في هذه الصفحة؟"
        return whatHappens
        
    }
    
    
    
    static  func  FeeText() -> String  {
        let whatHappens:String = setlanguage() ? "Fee" : "رسوم"
        return whatHappens
        
    }
    static  func  PriceFromText() -> String  {
        let whatHappens:String = setlanguage() ? "Price From" :"السعر من"
     
        return whatHappens
        
    }
    static  func  PriceToText() -> String  {
        let whatHappens:String = setlanguage() ? "Price To" : "السعر الى"
        return whatHappens
        
    }
    
    static  func  SelectCategoryText() -> String  {
        let whatHappens:String = setlanguage() ? "Select Category" : "اختر النوع"
        return whatHappens
        
    }
    static  func  nofarnText() -> String  {
        let whatHappens:String = setlanguage() ? "No farms found. Please add farm" : "لا يوجد عزبة (مزرعة). الرجاء اضافة عزبة"
        return whatHappens
        
    }
    
    static  func  priceminvalidText() -> String  {
        let whatHappens:String = setlanguage() ? "Price From Field Max 9999998" : "السعر من، لا يتجاوز 9999998"
        return whatHappens
        
    }
    static  func  pricemaxvalidText() -> String  {
        let whatHappens:String = setlanguage() ? "Price To Field Max 9999999" : "السعر إلى، لا يتجاوز 9999999"
        return whatHappens
        
    }
    static  func  weightmaxvalidText() -> String  {
        let whatHappens:String = setlanguage() ? "Weight Field Max 1000 Kg" : "اقصى وزن 1000 كيلو"
        return whatHappens
        
    }

    static  func  pricevalidText() -> String  {
        let whatHappens:String = setlanguage() ? "Price Field Max 9999999" : "اقصى سعر 9999999"
        return whatHappens
        
    }
    
    static  func  priceminmaxvalidText() -> String  {
        let whatHappens:String = setlanguage() ? "Price To Field less than Price from Field" : "السعر الاعلى اقل من السعر الادنى"
        return whatHappens
        
    }
    static  func  soldmaxvalidText() -> String  {
        let whatHappens:String = setlanguage() ? "Sold amount Field Max 9999999" : "اقصى مبلغ للمبيعات 9999999"
        return whatHappens
        
    }
    static  func  purchasedmaxvalidText() -> String  {
        let whatHappens:String = setlanguage() ? "Purchase amount Field Max 9999999" : "اقصى مبلغ للمشتريات 9999999"
        return whatHappens
        
    }
    
    
    
    static  func  searchText() -> String  {
        let whatHappens:String = setlanguage() ? "SEARCH" : "البحث"
        return whatHappens
        
    }
    
    
    
    
    
    static  func  RemarksFeildEmptyText() -> String  {
        let whatHappens:String = setlanguage() ? "Remarks Feild Empty" : "خانة الملاحظات فارغة"
        return whatHappens
        
    }
    static  func  PleaseaddatleastonepictureofcattletomovetomarketText() -> String  {
        let whatHappens:String = setlanguage() ? "Please add atleast one picture of the cattle" : "يرجى اضافة صورة واحدة على الأقل"
        return whatHappens
        
    }
    static  func  PleaseaddatleastonepictureofcattletomovetobreedText() -> String  {
        let whatHappens:String = setlanguage() ? "Please add atleast one picture of the cattle" : "يرجى اضافة صورة واحدة على الأقل"
        return whatHappens
        
    }
    
    
    
    
    static  func  Callfacilityisnotavailable() -> String  {
        let whatHappens:String = setlanguage() ? "Call facility is not available!!!" : "وسيلة الاتصال غير متوفرة"
        return whatHappens
        
    }
    static  func  TypeSomething() -> String  {
        let whatHappens:String = setlanguage() ? "Type Something..." : "اكتب شيئاً"
        return whatHappens
        
    }
    
    
    
    
    static  func  AreSureYouDeletethisFarmText() -> String  {
        let whatHappens:String = setlanguage() ? "Are You Sure You Want to Delete this Farm?" : "هل انت متأكد انك تريد مسح هذه العزبة"
        return whatHappens
        
    }
    static  func  AreSureYouBlockText() -> String  {
        let whatHappens:String = setlanguage() ? "Do you want to block this user?" : "هل تريد حظر هذا المستخدم ؟"
        return whatHappens
        
    }
    static  func  AreSureYouUnblockText() -> String  {
        let whatHappens:String = setlanguage() ? "Do you want to Unblock this user?" : "هب ترغب بإزالة الحظر عن هذا المستخدم؟"
        return whatHappens
        
    }
    
    
    
    
    
    static  func  MYFARMText() -> String  {
        let whatHappens:String = setlanguage() ? "MY FARM" : "عزبتي"
        return whatHappens
        
    }

    static  func  MaleText() -> String  {
        let whatHappens:String = setlanguage() ? "Male" : "ذكر"
        return whatHappens
        
    }
    
    static  func  AreSureYouDeletethisCattleText() -> String  {
        let whatHappens:String = setlanguage() ? "Are You Sure You Want to Delete this Cattle?" : "هل انت متأكد انك تريد مسح هذا الحيوان"
        return whatHappens
        
    }
    static  func  PleaselogintoaccessthisfunctionalityText() -> String  {
        let whatHappens:String = setlanguage() ? "Please login to access this functionality" : "يرجى تسجيل الدخول لاستخدام هذه الخاصية"
        return whatHappens
        
    }
    static  func  CattlenotfoundedText() -> String  {
        let whatHappens:String = setlanguage() ? "Cattle not founded" : "لم يتم ايجاد الحيوان"
        return whatHappens
        
    }
    static  func  CattleCategoryText() -> String  {
        let whatHappens:String = setlanguage() ? "Cattle Category" : "نوع الحيوان"
        return whatHappens
        
    }
    static  func  LocationNotCorrectText() -> String  {
        let whatHappens:String = setlanguage() ? "Location Not Correct" : "الموقع غير صحيح"
        return whatHappens
        
    }
    
    static  func  VisitingTimeText() -> String  {
        let whatHappens:String = setlanguage() ? "Visiting Time" : "موعد الزيارة"
        return whatHappens
        
    }
    static  func  MovetoMarketText() -> String  {
        let whatHappens:String = setlanguage() ? "  Move to Market  " : "اعرض في السوق "
        return whatHappens
        
    }
    static  func  RemovefromMarketText() -> String  {
        let whatHappens:String = setlanguage() ? "  Remove from Market  " : "إزالة من السوق "
        return whatHappens
        
    }
    static  func  PostedonText() -> String  {
        let whatHappens:String = setlanguage() ? "Posted on" : "تاريخ النشر"
        return whatHappens
        
    }
    static  func  DASHBOARDText() -> String  {
        let whatHappens:String = setlanguage() ? "DASHBOARD" : "لوحة التحكم"
        return whatHappens
        
    }
    static  func  RegNoText() -> String  {
        let whatHappens:String = setlanguage() ? "Reg No" : "رقم التسجيل"
        return whatHappens
        
    }
    
    
    static  func  UpdateAvailableText() -> String  {
        let whatHappens:String = setlanguage() ? "Update Available" : "التحديث متوفر"
        return whatHappens
        
    }
    static  func  UpdateNowText() -> String  {
        let whatHappens:String = setlanguage() ? "Update Now" : "حمل التحديث الآن"
        return whatHappens
        
    }
    static  func  UpdatenewversionText() -> String  {
        let whatHappens:String = setlanguage() ? "A new version of Farminoo App is available from the App Store. Please update to the latest version." : "هناك نسخة حديثة من تطبيق فارمينو في متجر التطبيقات، الرجاء التحديث للنسخة الجديدة."
        return whatHappens
        
    }
    
    static  func  FemaleText() -> String  {
        let whatHappens:String = setlanguage() ? "Female" : "انثى"
        return whatHappens
        
    }
    
    static  func  LocationMapText() -> String  {
        let whatHappens:String = setlanguage() ? "Location Map" : "خريطة الموقع"
        return whatHappens
        
    }
   
    static  func  CattleText() -> String  {
        let whatHappens:String = setlanguage() ? "Cattle" : "حيوان"
        return whatHappens
        
    }
    static  func  ContactUsText() -> String  {
        let whatHappens:String = setlanguage() ? "Contact Us" : "اتصل بنا"
        return whatHappens
        
    }
    
    
    static  func  ShareText() -> String  {
        let whatHappens:String = setlanguage() ? "Share" : "شارك"
        return whatHappens
        
    }
    
    static  func  breedrequestText() -> String  {
        let whatHappens:String = setlanguage() ? "Breed Request" : "طلب اضافة سلالة"
        return whatHappens
        
    }
    static  func  SendRequestText() -> String  {
        let whatHappens:String = setlanguage() ? "Send Request" : "ارسال الطلب"
        return whatHappens
        
    }
    
    static  func  UploadImagesText() -> String  {
        let whatHappens:String = setlanguage() ? "Upload Images" : "تحميل الصور"
        return whatHappens
        
    }
    static  func  RequestText() -> String  {
        let whatHappens:String = setlanguage() ? "Request" : "طلب"
        return whatHappens
        
    }
    
    static  func  IfnotinListPleaseclicktosubmitRequestText() -> String  {
        let whatHappens:String = setlanguage() ? "If not in List,Please click to submit Request" : "اذا لم يكن في القائمة، يرجى تقديم طلب إضافة"
        return whatHappens
        
    }
    
    static  func  CattledetailText() -> String  {
        let whatHappens:String = setlanguage() ? "Cattle Detail" : "بيانات الحيوان"
        return whatHappens
        
    }
    
    static  func  cattledescText() -> String  {
        let whatHappens:String = setlanguage() ? "Cattle Description" : "وصف الحيوان"
        return whatHappens
        
    }
    static  func  CattlePurchasedText() -> String  {
        let whatHappens:String = setlanguage() ? "Purchased Cattle" : "حيوان تم شراءه"
        return whatHappens
        
    }
    
    static  func  cattleDeathText() -> String  {
        let whatHappens:String = setlanguage() ? "Death Cattle" : "حيوان ميت"
        return whatHappens
        
    }
    static  func  CattleSoldText() -> String  {
        let whatHappens:String = setlanguage() ? "Sold Cattle" : "حيوان تم بيعه"
        return whatHappens
        
    }
    
    static  func  cattleRemovedText() -> String  {
        let whatHappens:String = setlanguage() ? "Removed Cattle" : "حيوان تمت ازالته"
        return whatHappens
        
    }
    static  func  CattleActiveText() -> String  {
        let whatHappens:String = setlanguage() ? "Active Cattle" : "حيوانات نشطة"
        return whatHappens
        
    }
    
    static  func  FinancialText() -> String  {
        let whatHappens:String = setlanguage() ? "Financial" : "مالي"
        return whatHappens
        
    }
    static  func  RefreshText() -> String  {
        let whatHappens:String = setlanguage() ? "Refresh" : "تحديث"
        return whatHappens
        
    }
    
    static  func  toText() -> String  {
        let whatHappens:String = setlanguage() ? "to" : "الى"
        return whatHappens
        
    }
    static  func  OwnerNameText() -> String  {
        let whatHappens:String = setlanguage() ? "Owner Name" : "اسم المالك"
        return whatHappens
        
    }
    static  func  ContactDetailsText() -> String  {
        let whatHappens:String = setlanguage() ? "Contact Details" : "بينات الاتصال"
        return whatHappens
        
    }
    
    static  func  CallforMoreInfoText() -> String  {
        let whatHappens:String = setlanguage() ? "Call for More Info" : "اتصل لمزيد من المعلومات"
        return whatHappens
        
    }
 
    static  func  PriceRangeText() -> String  {
        let whatHappens:String = setlanguage() ? "Price Range" : "نطاق السعر"
        return whatHappens
        
    }
    static  func  AgeRangeText() -> String  {
        let whatHappens:String = setlanguage() ? "Age Range" : "نطاق العمر"
        return whatHappens
        
    }
    
    static  func WeightRangeText() -> String  {
        let whatHappens:String = setlanguage() ? "Weight Range" : "نطاق الوزن"
        return whatHappens
        
    }
    static  func ByClickingRegister() -> String  {
        let whatHappens:String = setlanguage() ? "By Clicking Register ,  You accept to" : "بالظغط على تسجيل، انت توافق على"
        return whatHappens
        
    }
    
    static  func privacyRegister() -> String  {
        let whatHappens:String = setlanguage() ? "Our Terms & Conditions and Privacy Policy" : "شروطنا واحكامنا وسياسة الخصوصية"
        return whatHappens
        
    }
    
    static  func EDITPROFILEFLIPIMAGE() -> String  {
       
        
        var whatHappens:String = ""
     
        
            
        if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") != "market" {
             whatHappens = setlanguage() ? "EditProfile" : "stallionfooter"
        }else{
            whatHappens = setlanguage() ? "EditProfile" : "markettool"
        }
        
        
        
        
        return whatHappens
    }
    
    static  func CHATPROFILEFLIPIMAGE() -> String  {
        
        
        var whatHappens:String = ""
        
        
        if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") != "market" {
            
            
               whatHappens = setlanguage() ? "ChatNEW" : "stallionfooter"
            
        }else{
           whatHappens = setlanguage() ? "ChatNEW" : "markettool"
            
        }
        
        
      
        
        
        
        
        return whatHappens
    }
    
    
    
    
    static  func HOMEFLIPIMAGE() -> String  {
        
        var whatHappens:String = ""
        if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") == "management" {
            whatHappens = setlanguage() ? "dashboardtool" : "Report"
            
        }else{
            if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") != "market" {
                whatHappens = setlanguage() ? "stallionfooter" : "EditProfile"
            }else{
                whatHappens = setlanguage() ? "markettool" : "EditProfile"
            }
            
            
            
        }
        
        
        return whatHappens
    }
    
    static  func CHATFLIPIMAGE() -> String  {
        
        var whatHappens:String = ""
        if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") == "management" {
            whatHappens = setlanguage() ? "dashboardtool" : "Report"
            
        }else{
            
             if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") != "market" {
            whatHappens = setlanguage() ? "stallionfooter" : "ChatNEW"
             }else{
                  whatHappens = setlanguage() ? "markettool" : "ChatNEW"
            }
        }
        
        
        return whatHappens
    }
    
    
    
    
    
    
    static  func NOTIFICATIONFLIPIMAGE() -> String  {
        var whatHappens:String = ""
        
        if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") == "management" {
            
             whatHappens = setlanguage() ? "Bell" : "Transaction"
            
         }else{
            whatHappens = setlanguage() ? "Bell" : "Star"
            
        }
        
        return whatHappens
    }
    static  func FAVORITEFLIPIMAGE() -> String  {
        
        
        
        
        
        
        let whatHappens:String = setlanguage() ? "Star" : "Bell"
        
        return whatHappens
    }
    static  func REPORTFLIPIMAGE() -> String  {
        
        var whatHappens:String = ""
        if  userDefaults.GET_USERDEFAULTS(objectValue: "USER_TYPE") == "management" {
            whatHappens = setlanguage() ? "Report" : "dashboardtool"
            
        }
        
       
        
        
        
        
        return whatHappens
    }
    static  func TRANSACTIONFLIPIMAGE() -> String  {
        let whatHappens:String = setlanguage() ? "Transaction" : "Bell"
        
        return whatHappens
    }
}

