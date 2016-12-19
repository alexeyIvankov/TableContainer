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
    public var height:CGFloat?;
    private var _register_info:RegisterInfo<UITableViewCell.Type>?;
    
    public init(){
    }

    public init(nib_name:String, reuse_id:String){
        self._register_info = RegisterInfo(type_registration: TypeRegistration.nib(nib_name: nib_name, reuse_id: reuse_id))
        
    }
    
    public init(type:UITableViewCell.Type, reuse_id:String){
        self._register_info = RegisterInfo(type_registration: TypeRegistration.code(type: type, reuse_id: reuse_id))
    }
    
    public func register_info() -> RegisterInfo<UITableViewCell.Type>?{
        return self._register_info;
    }
    
}
