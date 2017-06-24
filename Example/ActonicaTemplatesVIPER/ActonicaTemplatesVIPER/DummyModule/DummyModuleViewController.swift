//
//  DummyModuleViewController.swift
//  ActonicaTemplatesVIPER
//
//  Created by Sergey Petrachkov on 6/24/17.
//  Copyright (c) 2017 Sergey Petrachkov. All rights reserved.
//
//  This file was generated by the Actonica VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects.
//

import UIKit

class DummyModuleViewController: UIViewController {
  //MARK: - UI properties
  
  //MARK: - Essentials
  var presenter : DummyModulePresenterInput?

  // MARK: Initializers
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: - Setup
  private func setup()
  {
    self.presenter = DummyModulePresenter(view: self, output: self)
  }
  
  // MARK: - Lifecycle
  override func viewDidLoad()
  {
    super.viewDidLoad()
  }
}
extension DummyModuleViewController : DummyModulePresenterOutput {
  func didChangeState(viewModel : DummyModule.Something.ViewModel){
    
  }
}
