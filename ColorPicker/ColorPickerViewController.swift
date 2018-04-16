//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Zach on 4/16/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    struct Color {
        let color: String?
        let uiColor : UIColor?
    }
    
    let colors =
    [
        Color(color: "Red", uiColor: UIColor.red),
        Color(color: "Orange", uiColor: UIColor.orange),
        Color(color: "Yellow", uiColor: UIColor.yellow),
        Color(color: "Green", uiColor: UIColor.green),
        Color(color: "Blue", uiColor: UIColor.blue),
        Color(color: "Purple", uiColor: UIColor.purple),
        Color(color: "Gray", uiColor: UIColor.gray),
    ]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].color
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].color
        self.view.backgroundColor = colors[row].uiColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = colors[0].color
        self.view.backgroundColor = colors[0].uiColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
