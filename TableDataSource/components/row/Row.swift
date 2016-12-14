//
//  Row.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

open class Row : ContainerItem
{
    public let meta_info: MetaInfoItem<Any>
    private(set) var cell:Cell?;
    
    required public init(meta_info:MetaInfoItem<Any>, cell:Cell? = nil)
    {
        self.meta_info = meta_info;
        self.cell = cell;
    }
}
