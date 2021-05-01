//
//  SideMenuOperationView.swift
//  SideMenu
//
//  Created by Kevin Baldha on 19/04/21.
//

import SwiftUI

struct SideMenuOperationView: View {
    let viewModel : sideMenuModel
    var body: some View {
        HStack(spacing:16){
            Image(systemName: viewModel.imageName)
                .frame(width: 24, height: 24)
            
            Text(viewModel.title)
                .font(.system(size: 15, weight:.semibold))
            
            Spacer()
        }.padding().foregroundColor(.white)
    }
}

struct SideMenuOperationView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOperationView(viewModel: .message)
    }
}
