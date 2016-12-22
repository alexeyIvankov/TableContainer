//
//  TableDataSource.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit


open class TableContainer : Container
{
    public typealias TypeItem = Section;
    fileprivate var sections:ContainerTemplate<Section> = ContainerTemplate<Section>();
    fileprivate var lock:NSRecursiveLock?;
    
    
    public required init(threadsafe:Bool)
    {
        if threadsafe == true{
            self.lock = NSRecursiveLock();
        }
    }
    
    func execute(operation:()->Void)
    {
        self.lock?.lock();
        operation();
        self.lock?.unlock();
    }
    
    //MARK: Container
    open func add(item:Section)
    {
        self.execute {
           self.sections.add(item: item);
        }
    }
    
    open func remove(id:String)
    {
        self.execute {
             self.sections.remove(id: id);
        }
    }
    
    open func remove(index:Int)
    {
        self.execute {
            self.sections.remove(index: index);
        }
    }
    
    open func item(id: String) -> Section?
    {
        var item:Section? = nil;
        
        self.execute {
            item = self.sections.item(id:id);
        }
    
        return item;
    }
    
    
    open func item(index: Int) -> Section?
    {
        var item:Section? = nil;
        
        self.execute {
            item = self.sections.item(index:index);
        }
        
        return item;
    }
    
    open func index(item: ContainerItem) -> Int?
    {
        var index:Int?;
        
        self.execute {
            index = self.sections.index(item: item);
        }
    
        return index;
    }
    
    open func items() -> [Section]
    {
        var items:[Section] = [];
        
        self.execute {
            items = self.sections.items();
        }
        
        return items;
    }
    
    open func count() -> Int
    {
        var count:Int = 0;
        
        self.execute {
            count = self.sections.count();
        }
        
        return count;
    }
}
