//
//  MetaInfo.swift
//  TableDataSource
//
//  Created by Alexey Ivankov on 13.12.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation

public struct MetaInfoItem
{
    let id:String;
    let sort_key:String;
    
    public var type:String?;
    public var model:Model<Any>?;

    public init(id:String, sort_key:String, type:String? = nil,  model:Model<Any>? = nil)
    {
        self.id = id;
        self.sort_key = sort_key;
        self.type = type;
        self.model = model;
    }
}
