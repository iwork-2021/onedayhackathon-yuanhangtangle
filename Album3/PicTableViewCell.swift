//
//  PicTableViewCell.swift
//  Album3
//
//  Created by yuanhang on 2021/12/20.
//

import UIKit

class PicTableViewCell: UITableViewCell {

    @IBOutlet weak var imageview: UIImageView!
    var image = UIImage()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
