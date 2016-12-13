//
//  Item.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation

public protocol ContainerItem {
    
    var id:String { get }
    var sortKey:String { get }
}
