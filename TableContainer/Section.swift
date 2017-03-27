
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation


open class Section : IContainer, IContainerItem
{
    public typealias TypeItem = Row;
   
    public let id:String;
    public let sortKey:String;
    public var type:TypeWrapper<Any>;
        
    fileprivate var rows:ContainerTemplate<Row> = ContainerTemplate<Row>();

    required public init(id:String, sortKey:String, type:TypeWrapper<Any>)
    {
        self.id = id;
        self.sortKey = sortKey;
        self.type = type;
    }
    
    
    //MARK: Container
    open func add(item:Row){
        self.rows.add(item: item);
    }
    
    open func remove(id:String){
        self.rows.remove(id: id);
    }
    
    open func remove(index: Int) {
        self.rows.remove(index: index);
    }
    
    open func item(id: String) -> Row? {
        return self.rows.item(id:id);
    }
    
    open func item(index: Int) -> Row? {
        return self.rows.item(index:index);
    }
    
    open func index(item: IContainerItem) -> Int? {
        return self.rows.index(item: item);
    }
    
    open func allItems() -> [Row] {
        return self.rows.allItems();
    }
    
    open func count() -> Int{
        return self.rows.count();
    }
    
}
