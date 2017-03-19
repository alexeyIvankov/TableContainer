//
//  Model.swift
//  TableDataSource
//
//  Created by Alexey Ivankov on 13.12.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation

open class Model<T> {
    
   public let value:T;
    
    required public init(value:T){
        self.value = value;
    }
}
