
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public struct Row : IContainerItem
{
 
    public let id:Int;
    public let sortKey:String;
    public var model:AnyObject?;
    
    public init(id:Int = 0, sortKey:String = "",  model:AnyObject? = nil)
    {
        self.id = id;
        self.sortKey = sortKey;
        self.model = model;
    }
}
