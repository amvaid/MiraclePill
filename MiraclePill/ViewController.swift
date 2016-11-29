//
//  ViewController.swift
//  MiraclePill
//
//  Created by Aman Vaid on 11/25/16.
//  Copyright © 2016 Aman Vaid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var StatePicker: UIPickerView!
    @IBOutlet weak var StatePickerBtn: UIButton!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successBtn: UIButton!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var streetAddessTextField: UITextField!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var miraclePillLabel: UILabel!
    @IBOutlet weak var seperatorBar: UIView!
    @IBOutlet weak var MiraclePillLogo: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York", "New Jersey"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StatePicker.dataSource = self
        StatePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StateButtonPressed(_ sender: Any) {
        
        StatePicker.isHidden = false
        countryTextField.isHidden = true
        zipCodeTextField.isHidden = true
        zipCodeLabel.isHidden = true
        countryLabel.isHidden = true
        
    }
    
    @IBAction func buyNowButton(_ sender: Any) {
        
        StatePicker.isHidden = true
        StatePickerBtn.isHidden = true
        stateLabel.isHidden = true
        countryTextField.isHidden = true
        zipCodeTextField.isHidden = true
        fullNameTextField.isHidden = true
        streetAddessTextField.isHidden = true
        cityTextField.isHidden = true
        cityLabel.isHidden = true
        fullNameLabel.isHidden = true
        streetAddressLabel.isHidden = true
        zipCodeLabel.isHidden = true
        countryLabel.isHidden = true
        buyNowBtn.isHidden = true
        miraclePillLabel.isHidden = true
        priceLabel.isHidden = true
        MiraclePillLogo.isHidden = true
        seperatorBar.isHidden = true
        successBtn.isHidden = false
        
    }
    
    @IBAction func successButtonPressed(_ sender: Any) {
        StatePicker.isHidden = true
        StatePickerBtn.isHidden = false
        countryTextField.isHidden = false
        zipCodeTextField.isHidden = false
        fullNameTextField.isHidden = false
        streetAddessTextField.isHidden = false
        cityTextField.isHidden = false
        cityLabel.isHidden = false
        fullNameLabel.isHidden = false
        streetAddressLabel.isHidden = false
        zipCodeLabel.isHidden = false
        countryLabel.isHidden = false
        buyNowBtn.isHidden = false
        miraclePillLabel.isHidden = false
        priceLabel.isHidden = false
        MiraclePillLogo.isHidden = false
        seperatorBar.isHidden = false
        successBtn.isHidden = true
        stateLabel.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        StatePickerBtn.setTitle(states[row], for: UIControlState.normal)
        StatePicker.isHidden = true
        countryTextField.isHidden = false
        zipCodeTextField.isHidden = false
        zipCodeLabel.isHidden = false
        countryLabel.isHidden = false
    }

}

