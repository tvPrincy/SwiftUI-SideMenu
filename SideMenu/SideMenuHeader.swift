//
//  SideMenuHeader.swift
//  SideMenu
//
//  Created by Kevin Baldha on 19/04/21.
//

import SwiftUI

struct SideMenuHeader: View {
    @Binding var isShowing : Bool
    var body: some View {
        ZStack(alignment:.topTrailing) {
            
            Button(action: {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment:.leading){
                Image("pic")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom,16)
                
                Text("Princy Varsani")
                    .font(.system(size: 24, weight:.semibold))
                
                Text("@varsani")
                    .font(.system(size: 14))
                    .padding(.bottom,24)
                
                HStack(spacing:12){
                    HStack(spacing:4){
                        Text("1,234").bold()
                        Text("Following")
                    }
                    HStack(spacing:4){
                        Text("1,234").bold()
                        Text("Followers")
                    }
                    Spacer()
                }
                
                Spacer()
                   
            }.padding() .foregroundColor(.white)
        }
    }
}

struct SideMenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeader(isShowing: .constant(true))
    }
}
