//
//  Cell.swift
//  TableDataSource
//
//  Created by Alexey Ivankov on 13.12.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

open class Cell
{
    fileprivate var _height:CGFloat?;
    fileprivate var _nib_name:String?;
    fileprivate var _reuse_id:String?;
    fileprivate var _type:UITableViewCell.Type?;
    
    private init(){}
    

    public init(nib_name:String, reuse_id:String, height:CGFloat? = nil)
    {
        self._nib_name = nib_name;
        self._reuse_id = reuse_id;
        self._height = height;
    }
    
    public init(type:UITableViewCell.Type, reuse_id:String, height:CGFloat? = nil)
    {
        self._type = type;
        self._reuse_id = reuse_id;
        self._height = height;
    }
    
    public func info() -> (nib_name:String, reuse_id:String)?
    {
        if self._reuse_id != nil && self._nib_name != nil{
            return (self._nib_name!, self._reuse_id!);
        }
        else{
           return nil;
        }
        
    }
    
    public func info() -> (type:UITableViewCell.Type, reuse_id:String)?
    {
        if self._reuse_id != nil && self._type != nil{
            return (self._type!, self._reuse_id!);
        }
        else{
            return nil;
        }
        
    }
    
}
