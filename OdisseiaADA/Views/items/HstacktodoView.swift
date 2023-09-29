//
//  HstacktodoView.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 19/09/23.
//

import SwiftUI

struct HstacktodoView: View {
    @StateObject var viewModel = HstacktodoViewViewModel()
    let item :TodoListItem
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(item.title)
                    .font(.title3)
                   
                
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            Button(action: {
               viewModel.toggleIsDone(item: item)
            }, label: {
                Image(systemName: item.isDone ? "checkmark.square" : "square")
                    .foregroundColor(Color.blue)
            })
        }
        
    }
}

struct HstacktodoView_Previews: PreviewProvider {
    static var previews: some View {
        HstacktodoView(item: .init(
            id: "123",
            title: "get kyot, get betta",
            dueDate: Date()
                .timeIntervalSince1970,
            createdDate: Date()
                .timeIntervalSince1970,
            isDone: false))
    }
}
