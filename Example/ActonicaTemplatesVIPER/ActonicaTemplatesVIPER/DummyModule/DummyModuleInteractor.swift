//
//  DummyModuleInteractor.swift
//  ActonicaTemplatesVIPER
//
//  Created by Sergey Petrachkov on 6/24/17.
//  Copyright (c) 2017 Sergey Petrachkov. All rights reserved.
//
//  This file was generated by the Actonica VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects
//

import UIKit

protocol DummyModuleInteractorInput
{
  var output : DummyModuleInteractorOutput? { get set }
  func doSomething(request: DummyModule.Something.Request)
}

protocol DummyModuleInteractorOutput {
  func didReceive(some data : Any)
  func didFail(with error: Error)
}

protocol DummyModuleDataStore
{
  //var name: String { get set }
}

class DummyModuleInteractor: DummyModuleInteractorInput, DummyModuleDataStore
{
  let service: DummyModuleService = DummyModuleService()
  var output: DummyModuleInteractorOutput?
  
  // MARK: Do something
  
  func doSomething(request: DummyModule.Something.Request)
  {
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
