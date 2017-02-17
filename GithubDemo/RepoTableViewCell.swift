//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Jiapei Liang on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var repo: GithubRepo! {
        didSet {
            titleLabel.text = repo.name
            ownerLabel.text = repo.ownerHandle
            avatarImageView.setImageWith(URL(string:repo.ownerAvatarURL!)!)
            starsLabel.text = "\(repo.stars!)"
            forksLabel.text = "\(repo.forks!)"
            descriptionLabel.text = repo.repoDescription
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
