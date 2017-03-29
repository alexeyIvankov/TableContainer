
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public struct Row : IContainerItem
{
    public typealias TypeId = String;
    
    public let id:TypeId;
    public let sortKey:String;
    public var model:AnyObject?;
    
    public init(id:TypeId, sortKey:String,  model:AnyObject? = nil)
    {
        self.id = id;
        self.sortKey = sortKey;
        self.model = model;
    }
}
