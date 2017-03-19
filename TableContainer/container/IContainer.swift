//
//  Container.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation

public protocol IContainerItem :  class{
    var meta_info:MetaInfoItem{ get }
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
    func items() -> [TypeItem]
 
    func count() -> Int;
}
