//
//  WelcomeInteractor.swift
//  VIPERExample
//
//  Created by Sergey Petrachkov on 13/09/2017.
//  Copyright (c) 2017 Sergey Petrachkov. All rights reserved.
//
//  This file was generated by the SergeyPetrachkov VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects
//

import UIKit

protocol WelcomeInteractorInput: class {
  var output : WelcomeInteractorOutput? { get set }
  func doSomething(request: Welcome.DataContext.Request)
}

protocol WelcomeInteractorOutput: class {
  func didReceive(some data : Any)
  func didFail(with error: Error)
}

class WelcomeInteractor: WelcomeInteractorInput {
  let service: WelcomeService = WelcomeService()
  weak var output: WelcomeInteractorOutput?
  
  // MARK: Do something
  func doSomething(request: Welcome.DataContext.Request) {
    // Let's say we execute some async operation, then we want to be able to inform our output when the operation is finshed
    // self.service.requestSomeDataAsync(requestParams: params, 
    //                                          succes: {
    //                                            receivedData in
    //                                              self.output?.didReceive(some: receivedData)
    //                                          }),
    //                                          failure: {
    //                                            error in 
    //                                              NSLog("An error has occured while retrieving some data: \(error)")
    //                                              self.output?.didFail(error: error)
    //                                          })
    self.service.doSomeWork()
  }
}
