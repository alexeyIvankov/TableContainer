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
    
    public init(typeCreate:TypeCreate<UITableViewHeaderFooterView.Type>){
        self.typeCreate = typeCreate;
        
    }

}
