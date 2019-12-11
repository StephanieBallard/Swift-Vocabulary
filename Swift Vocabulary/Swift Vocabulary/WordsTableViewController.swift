//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Stephanie Ballard on 12/9/19.
//  Copyright © 2019 Stephanie Ballard. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "Any named peice of data in your code that may change when your program runs."), VocabularyWord(word: "Array", definition: "A sequential collection of values of any type, such as an array of names in a band."), VocabularyWord(word: "Boolean", definition: "A data type that stores either true or false")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }
// this function uses swiftWord constant to match the index of the row to the index of the vocab words array
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let swiftWord = vocabWords[indexPath.row]
        cell.textLabel?.text = swiftWord.word

        // Configure the cell...

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let indexPath = tableView.indexPathForSelectedRow, let definitionVC = segue.destination as? DefinitionViewController {
                let word = vocabWords[indexPath.row]
                definitionVC.vocabWord = word
            }
        }
    }
    

}
