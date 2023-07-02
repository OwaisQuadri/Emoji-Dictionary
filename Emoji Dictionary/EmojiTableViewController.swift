//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Owais Quadri on 2023-07-02.
//

import UIKit

class EmojiTableViewController: UITableViewController {
let emojis = ["🤪", "😂", "🫡", "🥸", "🫣"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    // number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    // What goes in each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell", for: indexPath)

         // Configure the cell...
        let emoji = emojis[indexPath.row]
        cell.detailTextLabel?.text = emoji
        cell.textLabel?.text = emoji.unicodeScalars.first!.properties.name!.capitalized

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedEmoji = emojis[indexPath.row]
        performSegue(withIdentifier: "emojiDetail", sender: selectedEmoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDetailViewController = segue.destination as! EmojiDetailViewController
        let selectedEmoji = sender as! String
        emojiDetailViewController.emoji = selectedEmoji
    }
}
