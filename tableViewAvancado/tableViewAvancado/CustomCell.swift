//
//  DevsTableViewCell.swift
//  tableViewAvancado
//
//  Created by Elias Nazareno on 28/09/20.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelEmail: UILabel!
    @IBOutlet var imageDev: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setup(dev: Devs) {
        labelName.text = dev.nome
        labelEmail.text = dev.email
        imageDev.image = UIImage(named: dev.image)
        imageDev.layer.cornerRadius = 30
    }
}
