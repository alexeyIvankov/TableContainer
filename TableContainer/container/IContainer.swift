//
//  Container.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation

public protocol IContainerItem :  class{
    
    var id:String { get }
    var sortKey:String { get }
    var type:String { get }
}


public protocol IContainer
{
    associatedtype TypeItem : IContainerItem;
    
    func add(item:TypeItem);
    
    func item(index:Int) -> TypeItem?;
    func item(id:String) -> TypeItem?;
    
    func remove(index:Int);
    func remove(id:String);
    
    func index(item:IContainerItem) ->Int?
    func allItems() -> [TypeItem]
 
    func count() -> Int;
}
