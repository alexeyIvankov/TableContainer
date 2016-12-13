//
//  TableDataSource.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit


open class TableDataSource : Container
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
    
    //MARK: Container
    open func add(_ item:Section)
    {
        self.lock?.lock();
            self.sections.add(item);
        self.lock?.unlock();
    }
    
    open func remove(_ id:String)
    {
        self.lock?.lock();
            self.sections.remove(id);
        self.lock?.unlock();
    }
    
    open func search(_ id: String) -> Section?
    {
        var item:Section? = nil;
        
        self.lock?.lock();
            item = self.sections.search(id);
        self.lock?.unlock();
        
        return item;
    }
    
    
    open func item(_ index: Int) -> Section?
    {
        var item:Section? = nil;
        
        self.lock?.lock();
            item = self.sections.item(index);
        self.lock?.unlock();
        
        return item;
    }
    
    open func index(_ item: ContainerItem) -> Int?
    {
        var index:Int?;
        
        self.lock?.lock();
            index = self.sections.index(item);
        self.lock?.unlock();
        
        return index;
    }
    
    open func items() -> [Section]
    {
        var items:[Section] = [];
        
        self.lock?.lock();
            items = self.sections.items();
        self.lock?.unlock();
        
        return items;
    }
    
    open func count() -> Int
    {
        var count:Int = 0;
        
        self.lock?.lock();
            count = self.sections.count();
        self.lock?.unlock();
        
        return count;
    }
}
