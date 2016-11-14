//
//  Footer.swift
//  TableDataSource
//
//  Created by Alexey Ivankov on 19.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

open class Footer
{
    fileprivate var _height:CGFloat!;
    fileprivate var _title:String?;
    
    public required init(height:CGFloat, title:String? = nil){
        self._height = height;
        self._title = title;
    }
    
    open func title() -> String?{
        return self._title;
    }
    
    open func height() -> CGFloat{
        return self._height;
    }
    
    open func changeHeight(_ height:CGFloat){
        self._height = height;
    }
}
