//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by Junhee Yoon on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet var buttonList: [UIButton]!
    @IBOutlet weak var textView: UIView!
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designButtons(sendButton, "전송", "빨리보내", .yellow)
        designButtons(textColorButton, "색상", "변경해", .green)

        designTextField()
    }
    
    // MARK: - Helper Functions
    
    func designTextField() {
        userTextField.placeholder = "내용을 작성해주세요"
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress
        userTextField.font = .systemFont(ofSize: 15)
        userTextField.borderStyle = .none
        userTextField.textColor = .blue
    }
    
    func designButtons(_ buttonName: UIButton, _ buttonTitle: String, _ highlightedTitle: String, _ bgColor: UIColor) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(highlightedTitle, for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
    func buttonsArray() {
        let buttonArray = [sendButton, textColorButton]
        
        // 1. 반복문
        for item in buttonArray {
            item?.backgroundColor = .blue
            item?.layer.cornerRadius = 2
        }
        
        // 2. Outlet 컬렉션
        for item in buttonList {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
    }
    
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        resultLabel.text = userTextField.text
    }
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {

        if userTextField.isEditing {
            textView.isHidden = false
        } else {
            textView.isHidden.toggle()
        }
        view.endEditing(true)
    }

    @IBAction func textFieldEdited(_ sender: UITextField) {
        view.endEditing(true)
    }
}
