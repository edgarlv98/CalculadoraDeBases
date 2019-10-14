//
//  ViewController.swift
//  CalculadoraBases
//
//  Created by Alumno on 10/10/19.
//  Copyright © 2019 ITESM. All rights reserved.
//

import UIKit

//Color scheme
let colorFuncKeys = UIColor(red: 0.859, green: 0.561, blue: 0.388, alpha: 1)
let colorNumberkeys = UIColor(red: 0.922, green: 0.922, blue: 0.922, alpha: 1)
let colorMemoryKeys = UIColor(red: 0.481, green: 0.531, blue: 0.810, alpha: 1)
let colorDisabledkeys = UIColor(red: 0.333, green: 0.333, blue: 0.333, alpha: 1)

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var numberonDisplay : Double = 0 //Numero en display
    
    //Arreglo de bases que alimenta al UIPicker
    let numericalBases = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"]
    
    //Arreglo de botones que se iteran en la funcion enableDisableNumKeys
    var buttonArray : [UIButton]!
    
    

    @IBOutlet weak var lbDisplay: UILabel!
    @IBOutlet weak var pvBases: UIPickerView!
    
    //Outlets de botones numericos
    @IBOutlet weak var bt0: UIButton!
    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var bt2: UIButton!
    @IBOutlet weak var bt3: UIButton!
    @IBOutlet weak var bt4: UIButton!
    @IBOutlet weak var bt5: UIButton!
    @IBOutlet weak var bt6: UIButton!
    @IBOutlet weak var bt7: UIButton!
    @IBOutlet weak var bt8: UIButton!
    @IBOutlet weak var bt9: UIButton!
    @IBOutlet weak var bt10: UIButton!
    @IBOutlet weak var bt11: UIButton!
    @IBOutlet weak var bt12: UIButton!
    @IBOutlet weak var bt13: UIButton!
    @IBOutlet weak var bt14: UIButton!
    @IBOutlet weak var bt15: UIButton!
    
    //Outlets de complementos
    @IBOutlet weak var btFPN: UIButton!
    
    //Outlets de memoria
    @IBOutlet weak var btClearMem: UIButton! // MC
    @IBOutlet weak var btAddMem: UIButton! // M+
    @IBOutlet weak var btSubMem: UIButton! // M-
    @IBOutlet weak var btGetMem: UIButton! // MR
    
    //Otros outlets
    @IBOutlet weak var btClearDisplay: UIButton! // AC
    @IBOutlet weak var btDot: UIButton! //.
    @IBOutlet weak var btAdd: UIButton! // +
    @IBOutlet weak var btSub: UIButton! // -
    @IBOutlet weak var btAnswer: UIButton! // =
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonArray = [bt0, bt1, bt2, bt3, bt4, bt5, bt6, bt7, bt8, bt9, bt10, bt11, bt12, bt13, bt14, bt15]
        // Do any additional setup after loading the view.
    }
    
    //Se manda llamar al presionar una tecla numerica, usa el atributo tag de los botones numericos
    @IBAction func onNumberClicked(_ sender: UIButton) {
        lbDisplay.text = lbDisplay.text! + String(sender.tag-1)
        numberonDisplay = Double(lbDisplay.text!)!
    }
    
    //La funcion recibe la base numerica y desabilita o habilita las teclas numericas debidas
    func enableDisableNumKeys(base: Int){
        for n in 0...15{
            if n < base{
                buttonArray[n].isEnabled = true
                buttonArray[n].backgroundColor = colorNumberkeys
            }
            else {
                buttonArray[n].isEnabled = false
                buttonArray[n].backgroundColor = colorDisabledkeys
            }
        }
    }
    
    //MARK: PickerView methods
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numericalBases[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numericalBases.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if numericalBases[row] == "2" {
            enableDisableNumKeys(base: 2)
        }
        if numericalBases[row] == "3" {
            enableDisableNumKeys(base: 3)
        }
        if numericalBases[row] == "4" {
           enableDisableNumKeys(base: 4)
        }
        if numericalBases[row] == "5" {
           enableDisableNumKeys(base: 5)
        }
        if numericalBases[row] == "6" {
           enableDisableNumKeys(base: 6)
        }
        if numericalBases[row] == "7" {
           enableDisableNumKeys(base: 7)
        }
        if numericalBases[row] == "8" {
           enableDisableNumKeys(base: 8)
        }
        if numericalBases[row] == "9" {
           enableDisableNumKeys(base: 9)
        }
        if numericalBases[row] == "10" {
           enableDisableNumKeys(base: 10)
        }
        if numericalBases[row] == "11" {
           enableDisableNumKeys(base: 11)
        }
        if numericalBases[row] == "12" {
           enableDisableNumKeys(base: 12)
        }
        if numericalBases[row] == "13" {
           enableDisableNumKeys(base: 13)
        }
        if numericalBases[row] == "14" {
           enableDisableNumKeys(base: 14)
        }
        if numericalBases[row] == "15" {
           enableDisableNumKeys(base: 15)
        }
        if numericalBases[row] == "16" {
           enableDisableNumKeys(base: 16)
        }
    }
    

}

