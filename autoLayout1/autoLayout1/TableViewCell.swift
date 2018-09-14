//
//  TableViewCell.swift
//  autoLayout1
//
//  Created by Jacob Paul Hassler on 9/12/18.
//  Copyright © 2018 jphyr4. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var cardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCardView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupCardView(){
       self.backgroundColor = .clear
        self.selectionStyle = .none
        
        
        let cardView = UIView()
        cardView.backgroundColor = .blue
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.layer.cornerRadius = 12.0
        self.cardView = cardView
        self.addSubview(cardView)
        
        
        NSLayoutConstraint.activate([
        cardView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16.0),
        cardView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16.0),
        cardView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16.0),
        cardView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        
        }

}
