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
    public var height:CGFloat?;
    private var _register_info:RegisterInfo<UITableViewHeaderFooterView.Type>?;
    

    public init(){
    }

    public init(height:CGFloat){
        self.height = height;
    }
    
    public init(nib_name:String, reuse_id:String){
        self._register_info = RegisterInfo(type_registration: TypeRegistration.nib(nib_name: nib_name, reuse_id: reuse_id))
        
    }
    
    public init(type:UITableViewHeaderFooterView.Type, reuse_id:String){
        self._register_info = RegisterInfo(type_registration: TypeRegistration.code(type: type, reuse_id: reuse_id))
    }
    
    public func register_info() -> RegisterInfo<UITableViewHeaderFooterView.Type>?{
        return self._register_info;
    }
}
