//
//  Row.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public protocol RowType{}

open class Row : ContainerItem
{
    open let id:String;
    open let sortKey:String;
    
    fileprivate var _model:Model<Any>?;
    fileprivate var _type:RowType?;
    fileprivate var _cell:Cell?;

    required public init(id:String, sortKey:String, model:Model<Any>? = nil, type:RowType? = nil, cell:Cell? = nil)
    {
        self.id = id;
        self.sortKey = sortKey;
        self._model = model;
        self._type = type;
        self._cell = cell;
    }
    
    open func type() -> RowType?{
        return self._type;
    }
    
    open func model() -> Model<Any>? {
        return self._model;
    }
    
    open func cell() -> Cell?{
        return self._cell;
    }
}
