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
    private(set) var register_info:RegisterInfo<UITableViewCell.Type>?;
    
    public init(){
    }

    public init(nib_name:String, reuse_id:String){
        self.register_info = RegisterInfo(nib_name: nib_name, reuse_id: reuse_id);
    }
    
    public init(type:UITableViewCell.Type, reuse_id:String){
        self.register_info = RegisterInfo(type: type, reuse_id: reuse_id);
    }
    
}
