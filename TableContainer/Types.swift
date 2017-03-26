//
//  RegisterInfo.swift
//  TableDataSource
//
//  Created by Alexey Ivankov on 13.12.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import Foundation
import UIKit

public enum TypeCreate <T>
{
    case loadFromNib(nibName:String, reuseId:String)
    case build(type:T, reuseId:String)
}

