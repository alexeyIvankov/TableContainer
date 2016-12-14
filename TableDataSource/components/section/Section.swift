//
//  Section.swift
//  ContainerTableView
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation


open class Section : Container, ContainerItem
{
    public typealias TypeItem = Row;
    public let meta_info: MetaInfoItem
    
    open var header:Header?;
    open var footer:Footer?;
   
    fileprivate var _rows:ContainerTemplate<Row> = ContainerTemplate<Row>();
    
    required public init(meta_info:MetaInfoItem, header:Header?, footer:Footer? )
    {
        self.meta_info = meta_info;
        self.header = header;
        self.footer = footer;
    }

    
    //MARK: Container
    open func add(item:Row){
        self._rows.add(item: item);
    }
    
    open func remove(id:String){
        self._rows.remove(id: id);
    }
    
    open func remove(index: Int) {
        self._rows.remove(index: index);
    }
    
    open func item(id: String) -> Row? {
        return self._rows.item(id:id);
    }
    
    open func item(index: Int) -> Row? {
        return self._rows.item(index:index);
    }
    
    open func index(item: ContainerItem) -> Int? {
        return self._rows.index(item: item);
    }
    
    open func items() -> [Row] {
        return self._rows.items();
    }
    
    open func count() -> Int{
        return self._rows.count();
    }
    
}
