//
//  IContainerItem.swift
//  FormConstructor
//
//  Created by Alexey Ivankov on 29.03.17.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation

public protocol IContainerItem
{
    associatedtype TypeId:Equatable;
    
    var id:TypeId { get }
    var sortKey:String { get }
}
