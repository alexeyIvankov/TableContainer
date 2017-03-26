//
//  ContainerTemplate.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation


class ContainerTemplate<T:IContainerItem> : IContainer
{
    typealias TypeItem = T;
    fileprivate var items:Array<T> = Array<T>();
    
    func sort_items()
    {
        self.items.sort { (item1, item2) -> Bool in
            return item1.sortKey < item2.sortKey
        }
    }
    
    
    //MARK: Container
    func add(item:T)
    {
        self.items.append(item);
        self.sort_items()

    }
    
    func remove(id:String)
    {
        var removeIndex:Int?;
        
        for (index,value) in self.items.enumerated()
        {
            if value.id == id
            {
                removeIndex = index;
                break;
            }
        }
        
        if removeIndex != nil{
            self.items.remove(at: removeIndex!);
        }
        
        self.sort_items();
    }
    
    func remove(index:Int)
    {
        self.items.remove(at: index);
        self.sort_items();
    }
    
    func item(index: Int) -> T?
    {
        var item:T? = nil;
        
        if  index >= 0 && index < self.items.count {
            item = self.items[index];
        }
    
        return item;
    }
    
    
    func index(item:IContainerItem) ->Int?
    {
        var index:Int? = nil;
        
        for (_index,value) in self.items.enumerated()
        {
            if value.id == item.id
            {
                index = _index;
                break;
            }
        }
        return index
    }
    
    func allItems() -> [T] {
        return self.items;
    }
    
    func item(id: String) -> T?
    {
        var item:T? = nil;
        
        for (_,value) in self.items.enumerated()
        {
            if value.id == id
            {
                item = value;
                break;
            }
        }
        return item;
    }
    
    func count() -> Int
    {
        var count:Int = 0;
        
        count = self.items.count;
        
        return count;
    }
}
