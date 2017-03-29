
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation


public struct Section : IContainer, IContainerItem
{

    public typealias TypeItem = Row;
    public typealias TypeId = String;
   
    public let id:TypeId;
    public let sortKey:String;
    
    fileprivate var rows:ContainerTemplate<Row> = ContainerTemplate<Row>();

    public init(id:TypeId, sortKey:String)
    {
        self.id = id;
        self.sortKey = sortKey;
    }
    
    //MARK: Container
    public func add(item:Row){
        self.rows.add(item: item);
    }
    
    public func remove(id:TypeId){
        self.rows.remove(id: id);
    }
    
    public func remove(index: Int) {
        self.rows.remove(index: index);
    }
    
    public func item(id: TypeId) -> Row? {
        return self.rows.item(id:id);
    }
    
    public func item(index: Int) -> Row? {
        return self.rows.item(index:index);
    }
    
    public func index(item: TypeItem) -> Int? {
        return self.rows.index(item: item);
    }
    
    public func allItems() -> [Row] {
        return self.rows.allItems();
    }
    
    public func count() -> Int{
        return self.rows.count();
    }
    
}
