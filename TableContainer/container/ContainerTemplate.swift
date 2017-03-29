
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
    
    func remove(id:T.TypeId)
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
        
        if removeIndex != nil && removeIndex! < self.items.count {
            self.items.remove(at: removeIndex!);
        }
        
        self.sort_items();
    }
    
    func remove(index:Int)
    {
        if index < self.items.count
        {
            self.items.remove(at: index);
            self.sort_items();
        }
    }
    
    func item(index: Int) -> T?
    {
        var item:T? = nil;
        
        if  index >= 0 && index < self.items.count {
            item = self.items[index];
        }
    
        return item;
    }
    
    
    func index(item:TypeItem) ->Int?
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
    
    func item(id: TypeItem.TypeId) -> T?
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
