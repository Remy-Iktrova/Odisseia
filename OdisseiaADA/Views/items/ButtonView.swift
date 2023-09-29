//
//  ButtonView.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 20/09/23.
//

import SwiftUI

struct ButtonView: View {
    
    @State var action: () -> Void
    @State var title: String
    @State var background: Color
    
    var body: some View {
        Button(action: {action()},
               label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
            }})
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {print("aa")}, title: "aa", background: .blue)
    }
}
