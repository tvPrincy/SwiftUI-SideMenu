//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Kevin Baldha on 19/04/21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing : Bool
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                //Header
                SideMenuHeader(isShowing: $isShowing)
                    .frame(height: 240)
                    
                // Cell Item
                ForEach(sideMenuModel.allCases, id: \.self){ option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SideMenuOperationView(viewModel: option)
                        })
                    
                }
                
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
