//
//  FilterViewController.swift
//  TroodApp
//
//  Created by Dmitriy Borovikov on 05.10.16.
//  Copyright © 2016 Dmitriy Borovikov. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {

    let normalButtonColor = UIColor(red: 32/255, green: 32/255, blue: 32/255, alpha: 1)
    let selectedButtonColor = UIColor(red: 241/255, green: 148/255, blue: 28/255, alpha: 1)
    
    @IBOutlet var rangeSelectionButtons: [UIButton]!
    @IBOutlet var tag1SelectionButtons: [UIButton]!
    @IBOutlet var tag2SelectionButtons: [UIButton]!
    @IBOutlet var tag3SelectionButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapRangeSelection(rangeSelectionButtons[0])
        tapTag1Selection(tag1SelectionButtons[1])
        tapTag2Selection(tag2SelectionButtons[0])
        tapTag3Selection(tag3SelectionButtons[2])

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func tapExit(_ sender: UIButton) {
        
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setSelectedButton(selectedButton: UIButton, selection: [UIButton]) {

        for button in selection {
            button.isSelected = false
            button.backgroundColor = normalButtonColor
        }
        
        selectedButton.isSelected = true
        selectedButton.backgroundColor = selectedButtonColor

    }

    
    
    @IBAction func tapRangeSelection(_ sender: UIButton) {
        
        setSelectedButton(selectedButton: sender, selection: rangeSelectionButtons)
    }
    
    @IBAction func tapTag1Selection(_ sender: UIButton) {

        setSelectedButton(selectedButton: sender, selection: tag1SelectionButtons)
    }
    
    
    @IBAction func tapTag2Selection(_ sender: UIButton) {

        setSelectedButton(selectedButton: sender, selection: tag2SelectionButtons)
}
    
    
    @IBAction func tapTag3Selection(_ sender: UIButton) {

        setSelectedButton(selectedButton: sender, selection: tag3SelectionButtons)

    }
}
