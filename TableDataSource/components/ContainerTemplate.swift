//
//  ContainerTemplate.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation


class ContainerTemplate<T:ContainerItem> : Container
{
    typealias TypeItem = T;
    fileprivate var _items:Array<T> = Array<T>();
 
    
    //MARK: Container
    func add(_ item:T)
    {
        self._items.append(item);
        
        self._items.sort { (item1, item2) -> Bool in
            return item1.sortKey < item2.sortKey
        }
    }
    
    func remove(_ id:String)
    {
        var removeIndex:Int?;
        
        for (index,value) in self._items.enumerated()
        {
            if value.id == id
            {
                removeIndex = index;
                break;
            }
        }
        
        if removeIndex != nil{
            self._items.remove(at: removeIndex!);
        }
        
        self._items.sort { (item1, item2) -> Bool in
            return  item1.sortKey < item2.sortKey
        }
        
    }
    
    func item(_ index: Int) -> T?
    {
        var item:T? = nil;
        
        if  index >= 0 && index < self._items.count {
            item = self._items[index];
        }
    
        return item;
    }
    
    
    func index(_ item:ContainerItem) ->Int?
    {
        var index:Int? = nil;
        
        for (_index,value) in self._items.enumerated()
        {
            if value.id == item.id
            {
                index = _index;
                break;
            }
        }
        return index
    }
    
    func items() -> [T] {
        return self._items;
    }
    
    func search(_ id: String) -> T?
    {
        var item:T? = nil;
        
        for (_,value) in self._items.enumerated()
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
        
        count = self._items.count;
        
        return count;
    }
}
