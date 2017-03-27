
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

open class Row : IContainerItem
{
    public let id:String;
    public let sortKey:String;
    public var type:TypeWrapper<Any>?;
    public var model:AnyObject?;
    
    required public init(id:String, sortKey:String, type:TypeWrapper<Any>?, model:AnyObject? = nil)
    {
        self.id = id;
        self.sortKey = sortKey;
        self.type = type;
        self.model = model;
    }
}
