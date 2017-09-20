//
//  PlainCodePresenter.swift
//  VIPERExample
//
//  Created by Sergey Petrachkov on 20/09/2017.
//  Copyright (c) 2017 Sergey Petrachkov. All rights reserved.
//
//  This file was generated by the SergeyPetrachkov VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects
//

import UIKit

protocol PlainCodePresenterInput: class {
  var view: UIViewController! { get set }
  var output: PlainCodePresenterOutput? { get set }
  var router : PlainCodeRoutingLogic? { get set }
  var interactor : PlainCodeInteractorInput? { get set }
  func presentSomething()
}
protocol PlainCodePresenterOutput: class {
  func didChangeState(viewModel : PlainCode.DataContext.ViewModel)
}

class PlainCodePresenter: PlainCodePresenterInput {
  // MARK: - Essentials
  weak var view: UIViewController!
  weak var output : PlainCodePresenterOutput?
  var viewModel : PlainCode.DataContext.ViewModel? {
    didSet{
      guard let viewModel = self.viewModel else {
        return
        //or do something else like show placeholder
      }
      self.output?.didChangeState(viewModel: viewModel)
    }
  }
  var router : PlainCodeRoutingLogic?
  var interactor : PlainCodeInteractorInput?
  // MARK: - Initializers
  init() {
    
  }
  deinit {
    print("PlainCodePresenter deinit is called")
  }
  // MARK: - Presenter Input
  func presentSomething() {
    // ask router to navigate somewhere or ask interactor for resources... it's up to you
    // like:
    // let requestParams = RequestParams()
    // self.interactor.getSomeData(requestParams: requestParams)
    // or:
    // let routingParams = RoutingParams(firstValue : self.viewModel.firstValue, secondValue: self.viewModel.secondValue)
    // self.router.showNextModule(from: self.view, with: routingParams)
  }
}
extension PlainCodePresenter : PlainCodeInteractorOutput {
  // MARK: - Interactor output
  func didReceive(some data: Any) {
    // Process it and act accordingly like:
    // self.output?.didChangeState(viewModel : )
  }
  func didFail(with error: Error) {
//    self.router.showError(error: error)
  }
}