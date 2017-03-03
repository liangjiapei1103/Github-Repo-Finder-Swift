//
//  SettingsPresentingViewControllerDelegate.swift
//  GithubDemo
//
//  Created by Jiapei Liang on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}
