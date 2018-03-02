
//  Created by Alexey Ivankov on 13.12.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public enum BuildType
{
    case loadFromClass(class: AnyClass, reuseId: String)
    case loadFromNib(nibName:String, reuseId:String)
}

