//
//  TypeWraper.swift
//  FormConstructor
//
//  Created by Alexey Ivankov on 27.03.17.
//  Copyright © 2017 Alexey Ivankov. All rights reserved.
//

import Foundation

public class TypeWrapper<T>
{
    public let value:T;
    
    public init(value:T){
        self.value = value;
    }
}
