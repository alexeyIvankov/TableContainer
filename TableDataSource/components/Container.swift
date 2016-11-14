//
//  Container.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation


public protocol Container
{
    associatedtype TypeItem : Item;
    
    func add(_ item:TypeItem);
    func item(_ index:Int) -> TypeItem?;
    func index(_ item:Item) ->Int?
    func items() -> [TypeItem]
    func search(_ id:String) -> TypeItem?;
    func remove(_ id:String);
    func count() -> Int;
}
