//
//  RegisterInfo.swift
//  TableDataSource
//
//  Created by Alexey Ivankov on 13.12.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public enum TypeRegistration <T>
{
    case nib(nib_name:String, reuse_id:String)
    case code(type:T, reuse_id:String)
}


public struct RegisterInfo<T>
{
    fileprivate var _type_registration:TypeRegistration<T>;
    
    public init(type_registration:TypeRegistration<T>){
        self._type_registration = type_registration;
    }
    
    func type() -> TypeRegistration<T>{
        return self._type_registration;
    }
}
