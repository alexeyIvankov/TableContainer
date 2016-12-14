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
    
    func sort_items()
    {
        self._items.sort { (item1, item2) -> Bool in
            return item1.meta_info.sort_key < item2.meta_info.sort_key
        }
    }
    
    
    //MARK: Container
    func add(item:T)
    {
        self._items.append(item);
        self.sort_items()

    }
    
    func remove(id:String)
    {
        var removeIndex:Int?;
        
        for (index,value) in self._items.enumerated()
        {
            if value.meta_info.id == id
            {
                removeIndex = index;
                break;
            }
        }
        
        if removeIndex != nil{
            self._items.remove(at: removeIndex!);
        }
        
        self.sort_items();
    }
    
    func remove(index:Int)
    {
        self._items.remove(at: index);
        self.sort_items();
    }
    
    func item(index: Int) -> T?
    {
        var item:T? = nil;
        
        if  index >= 0 && index < self._items.count {
            item = self._items[index];
        }
    
        return item;
    }
    
    
    func index(item:ContainerItem) ->Int?
    {
        var index:Int? = nil;
        
        for (_index,value) in self._items.enumerated()
        {
            if value.meta_info.id == item.meta_info.id
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
    
    func item(id: String) -> T?
    {
        var item:T? = nil;
        
        for (_,value) in self._items.enumerated()
        {
            if value.meta_info.id == id
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
