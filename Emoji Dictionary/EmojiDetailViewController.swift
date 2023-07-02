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
    
    var emoji = "🫥"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        detailLabel.text = emoji.unicodeScalars.first!.properties.name!.capitalized
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
