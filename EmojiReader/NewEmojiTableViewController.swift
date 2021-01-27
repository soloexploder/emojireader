//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by MacBook on 16.01.2021.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", discription: "", isFavorite: false)
    
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var discriptionTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        updateSaveButtonState()
        
    }
    
    private func updateSaveButtonState () {
        let emojiText = emojiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let discriptionText = discriptionTextField.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !discriptionText.isEmpty
    }
    
    private func updateUI() {
        emojiTextField.text = emoji.emoji
        nameTextField.text = emoji.name
        discriptionTextField.text = emoji.discription
        
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        
        let emoji = emojiTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = discriptionTextField.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, discription: description, isFavorite: self.emoji.isFavorite)
    }

}
