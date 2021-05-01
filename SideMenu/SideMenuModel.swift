//
//  SideMenuModel.swift
//  SideMenu
//
//  Created by Kevin Baldha on 19/04/21.
//

import Foundation

enum sideMenuModel : Int, CaseIterable {
    case profile
    case list
    case bookmarks
    case message
    case notifications
    case logout
    
    var title : String{
        switch self {
        case .profile:
            return "Profile"
        case .list:
            return "Lists"
        case .bookmarks :
            return "Bookmarks"
        case .message :
            return "Message"
        case .notifications :
            return "Notifications"
        case .logout :
            return "Logout"
        }
    }
    
    var imageName : String{
        switch self {
        case .profile:
            return "person"
        case .list:
            return "list.bullet"
        case .bookmarks :
            return "bookmark"
        case .message :
            return "bubble.left"
        case .notifications :
            return "bell"
        case .logout :
            return "arrow.left.square"
        }
    }
}
