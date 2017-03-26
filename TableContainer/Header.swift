//
//  Header.swift
//  TableDataSource
//
//  Created by Alexey Ivankov on 19.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

open class Header
{
    public var height:CGFloat?;
    public var title:String?;
    private(set) var typeCreate:TypeCreate<UITableViewHeaderFooterView.Type>!;
    
    public init(nibName:String, reuseId:String){
        self.typeCreate = TypeCreate.loadFromNib(nibName: nibName, reuseId: reuseId);
        
    }
    
    public init(type:UITableViewHeaderFooterView.Type, reuseId:String){
        self.typeCreate = TypeCreate.build(type: type, reuseId: reuseId);
    }
}
