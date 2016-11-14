//
//  Section.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation

public protocol SectionType { }

open class Section : Container, Item
{
    public typealias TypeItem = Row;
    
    open let id:String;
    open let sortKey:String;
    
    open var header:Header?;
    open var footer:Footer?;
   
    fileprivate var _rows:ContainerTemplate<Row> = ContainerTemplate<Row>();
    fileprivate var _type:SectionType?;
    
    required public init(id:String, sortKey:String, type:SectionType? = nil, header:Header?, footer:Footer? )
    {
        self.id = id;
        self.sortKey = sortKey;
        self._type = type;
        self.header = header;
        self.footer = footer;
    }
    
    
    open func type() -> SectionType?{
        return self._type;
    }

    
    //MARK: Container
    open func add(_ item:Row){
        self._rows.add(item);
    }
    
    open func remove(_ id:String){
        self._rows.remove(id);
    }
    
    open func search(_ id: String) -> Row? {
        return self._rows.search(id);
    }
    
    open func item(_ index: Int) -> Row? {
        return self._rows.item(index);
    }
    
    open func index(_ item: Item) -> Int? {
        return self._rows.index(item);
    }
    
    open func items() -> [Row] {
        return self._rows.items();
    }
    
    open func count() -> Int{
        return self._rows.count();
    }
    
}
