//
//  PessoaTableViewCell.swift
//  exercicioSegmentControl
//
//  Created by Elias Nazareno on 07/10/20.
//

import UIKit

class PessoaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelNome: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func setNeedsUpdateConstraints() {
        
    }

    func Setup (nome: String) {
        labelNome?.text = nome
    }
}
