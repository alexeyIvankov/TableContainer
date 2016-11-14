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

open class Row : Item
{
    open let id:String;
    open let sortKey:String;
    
    fileprivate var _value:AnyObject?;
    fileprivate var _type:RowType?;
    fileprivate var _height:CGFloat?;
    
    required public init(id:String, sortKey:String, value:AnyObject? = nil, type:RowType? = nil, height:CGFloat? = nil)
    {
        self.id = id;
        self.sortKey = sortKey;
        self._value = value;
        self._type = type;
        self._height = height;
    }
    
    open func type() -> RowType?{
        return self._type;
    }
    
    open func value() -> AnyObject?{
        return self._value;
    }
    
    open func height() -> CGFloat?{
        return self._height;
    }
    
    open func changeHeight(_ height:CGFloat){
        self._height = height;
    }
}
