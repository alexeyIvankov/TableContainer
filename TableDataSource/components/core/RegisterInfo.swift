//
//  RegisterInfo.swift
//  TableDataSource
//
//  Created by Alexey Ivankov on 13.12.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public struct RegisterInfo<T>
{
    fileprivate var _nib_name:String?;
    fileprivate var _reuse_id:String?;
    fileprivate var _type:T?;
    
    
    public init(nib_name:String, reuse_id:String)
    {
        self._nib_name = nib_name;
        self._reuse_id = reuse_id;
    }
    
    public init(type:T, reuse_id:String)
    {
        self._type = type;
        self._reuse_id = reuse_id;
    }
    
    public func nib_info() -> (nib_name:String, reuse_id:String)?
    {
        guard self._reuse_id != nil && self._nib_name != nil else {
            return nil;
        }
        
        return (self._nib_name!, self._reuse_id!);
    }
    
    public func type_info() -> (type:T, reuse_id:String)?
    {
        guard self._reuse_id != nil && self._type != nil else {
            return nil;
        }
        
        return (self._type!, self._reuse_id!);
    }
}
