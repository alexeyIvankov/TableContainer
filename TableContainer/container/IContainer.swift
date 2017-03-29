//
//  Container.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation

public protocol IContainer
{
    associatedtype TypeItem : IContainerItem;

    func add(item:TypeItem);
    
    func item(index:Int) -> TypeItem?;
    func item(id:TypeItem.TypeId) -> TypeItem?;
    
    func remove(index:Int);
    func remove(id:TypeItem.TypeId);
    
    func index(item:TypeItem) ->Int?
    func allItems() -> [TypeItem]
 
    func count() -> Int;
}

