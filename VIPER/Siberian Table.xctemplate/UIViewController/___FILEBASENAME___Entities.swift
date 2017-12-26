//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the SergeyPetrachkov VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects
//

import UIKit
import SiberianVIPER

enum ___VARIABLE_moduleName___ {
  // MARK: - Use cases
  enum DataContext {
  	struct ModuleIn {
  	}
  	struct ModuleOut {
  	}
    struct Request {
      let skip: Int
      let take: Int
    }
    struct Response {
      let originalRequest: Request
      let items: [ListItemModel]
    }
    class ViewModel: CollectionViewModel {
      var batchSize: Int = 20
      
      var items: [CollectionModel] = []
      
      var changeSet: [CollectionChange] = []
      
      var isBusy: Bool = false
      
      init(moduleIn: ModuleIn) {
        
      }
    }
  }
}