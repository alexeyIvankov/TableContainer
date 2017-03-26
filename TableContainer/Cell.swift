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
    private(set) var typeCreate:TypeCreate<UITableViewCell.Type>!;
    
    public init(nibName:String, reuseId:String){
        self.typeCreate = TypeCreate.loadFromNib(nibName: nibName, reuseId: reuseId);
        
    }
    
    public init(type:UITableViewCell.Type, reuseId:String){
        self.typeCreate = TypeCreate.build(type: type, reuseId: reuseId);
    }
}
