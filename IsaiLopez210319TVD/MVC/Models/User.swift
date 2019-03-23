//
//  User.swift
//  IsaiLopez210319TVD
//
//  Created by upgop on 22/03/19.
//  Copyright © 2019 upgop. All rights reserved.
//

import UIKit

class User: NSObject
{
    var firstName: String!
    var lastName: String!
    
    init(firstName: String, lastName: String)
    {
        self.firstName = firstName
        self.lastName = lastName
    }
}
