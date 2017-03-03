//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Jiapei Liang on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UITableViewController {

    @IBOutlet weak var minimalStarsSlider: UISlider!
    @IBOutlet weak var minimalStarLabel: UILabel!
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    var settings: GithubRepoSearchSettings!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        minimalStarsSlider.value = Float(settings.minStars)
        minimalStarLabel.text = "\(settings.minStars)"
        
        tableView.tableFooterView = UIView(frame: .zero)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onCancelButton(_ sender: Any) {
        
        dismiss(animated: true) { 
            self.delegate?.didCancelSettings()
        }

    }
    

    @IBAction func onSaveButton(_ sender: Any) {
        
        settings?.minStars = Int(minimalStarsSlider.value)
        
        dismiss(animated: true, completion: {
            self.delegate?.didSaveSettings(settings: self.settings!)
        })
        
    }
    
    @IBAction func onSliderValueChanged(_ sender: Any) {
        
        minimalStarLabel.text = "\(Int(roundf(minimalStarsSlider.value)))"
        
    }
    

    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
