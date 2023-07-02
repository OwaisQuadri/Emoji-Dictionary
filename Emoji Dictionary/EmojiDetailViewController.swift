//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Owais Quadri on 2023-07-02.
//

import UIKit

class EmojiDetailViewController: UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    var emoji: Emoji = Emoji(character: "🫥", definition: "Unknown", year: 9999, rating: 0.0, category: "unknown")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.character
        let rating: Any = emoji.rating ?? "No Rating"
        detailLabel.text =
            """
                Name: \(emoji.definition)
                Year: \(emoji.year)
                Rating: \(rating)
                Category: \(emoji.category)
            """
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
