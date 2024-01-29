//
//  ViewController.swift
//  Type Writter Effect Demo
//
//  Created by Hassan Azhar on 06/06/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    let message = "Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold...,Come with me, and see what has been foretold..."

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.typeOnWords(string: message)
    }
    
}

extension String {
    var wordsArray: [String] {
        var wordsArray = [String]()
        wordsArray =  self.components(separatedBy: .whitespaces)
        return wordsArray
    }
}
extension UITextView {
    func typeOnWords(string: String) {
        let characterArray = string.wordsArray
        var characterIndex = 0
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
            self.text = characterArray[0..<characterIndex].joined(separator: " ")
            characterIndex += 1
            if characterIndex == characterArray.count {
                timer.invalidate()
                return
            }
        }
    }
}
