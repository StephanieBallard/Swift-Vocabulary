//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Stephanie Ballard on 12/9/19.
//  Copyright © 2019 Stephanie Ballard. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let unwrappedWord = vocabWord {
            definitionLabel.text = unwrappedWord.word
            textViewDefinition.text = unwrappedWord.definition
        }
    }
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    
    @IBOutlet weak var textViewDefinition: UITextView!
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
