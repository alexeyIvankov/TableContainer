
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation


public struct Section : IContainer, IContainerItem
{
    public let id:Int;
    public let sortKey:String;
    
    fileprivate var rows:ContainerTemplate = ContainerTemplate();

    public init(id:Int = 0, sortKey:String = "")
    {
        self.id = id;
        self.sortKey = sortKey;
    }
    
    //MARK: Container
    public func add(item:IContainerItem){
        self.rows.add(item: item);
    }
    
    public func remove(id:Int){
        self.rows.remove(id: id);
    }
    
    public func remove(index: Int) {
        self.rows.remove(index: index);
    }
    
    public func item(id: Int) -> IContainerItem? {
        return self.rows.item(id:id);
    }
    
    public func item(index: Int) -> IContainerItem? {
        return self.rows.item(index:index);
    }
    
    public func index(item: IContainerItem) -> Int? {
        return self.rows.index(item: item);
    }
    
    public func allItems() -> [IContainerItem] {
        return self.rows.allItems();
    }
    
    public func count() -> Int{
        return self.rows.count();
    }
    
}
