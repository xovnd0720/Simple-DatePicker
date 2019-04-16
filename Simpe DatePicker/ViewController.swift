//
//  ViewController.swift
//  Simpe DatePicker
//
//  Created by amadeus on 16/04/2019.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // UI의 지역화(locatization)
        let locale = Locale(identifier: "ko_KO")
        myDatePicker.locale = locale
        
        // DatePicker 모드 설정
        myDatePicker.datePickerMode = UIDatePicker.Mode.time
    }

    @IBAction func changeDatePicker(_ sender: Any) {
        let selectedData = myDatePicker.date
        print(selectedData)
        
        // Date 형을 문자형으로 변환
        let formatter = DateFormatter()
   //     formatter.dateFormat = "YY:MM:DD HH:mm "
       formatter.dateFormat = "a HH:mm "
        outLabel.text = formatter.string(from: selectedData)
    }
}

