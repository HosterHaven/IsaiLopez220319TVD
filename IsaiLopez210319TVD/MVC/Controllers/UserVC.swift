//
//  ViewController.swift
//  IsaiLopez210319TVD
//
//  Created by upgop on 22/03/19.
//  Copyright © 2019 upgop. All rights reserved.
//

import UIKit

class UserVC: UIViewController
{
    var users: [User] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.setUsersDefault()
        
    }
    
    func setUsersDefault()
    {
        self.users.append(User(firstName: "Silvia", lastName: "Perez"))
        self.users.append(User(firstName: "Abigail", lastName: "Gonzalez"))
        self.users.append(User(firstName: "Pablo", lastName: "Ibarra"))
        self.users.append(User(firstName: "Luis", lastName: "Garza"))
        self.users.append(User(firstName: "Isai", lastName: "Lopez"))
    }
}

extension UserVC:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTVCell", for: indexPath) as! UserTVCell
        
        
        let user: User = self.users[indexPath.row]
        cell.lblUsername.text = "\(user.firstName!) \(user.lastName!)"
        
        return cell
    }
}

extension UserVC: UITableViewDelegate
{
    func tableView(_ tableView:UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("didSelectRowAt.indexPath.row \(indexPath.row)")
    }
}


