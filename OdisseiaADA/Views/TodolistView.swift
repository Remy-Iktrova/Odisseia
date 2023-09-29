//
//  TodolistView.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 19/09/23.
//
import FirebaseFirestoreSwift
import SwiftUI

struct TodolistView: View {
    
    @StateObject var viewModel: TodolistViewViewModel
    @FirestoreQuery var items: [TodoListItem]
    
    
    init(userId:String) {
        self._items = FirestoreQuery(
            collectionPath: "users/BDRAVjGfyGVle0YwHVmwgnpRqoo1/todos"
        )
        self._viewModel = StateObject(wrappedValue: TodolistViewViewModel(userId: userId))
    }
    
    @State var iconenav = ["display", "Banana", "Orange", "Mango"]
    
    var body: some View {
        
            
            
            ScrollView {
            
                ZStack (alignment:.top){
                    Image("codigo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    VStack {//vstack todo da pag
                        HStack {
                            Text("To-do:")
                                .font(.title)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                            
                            
                            Spacer()
                        }
                        .padding(.bottom, 8)
                        .padding([.top, .leading], 16)
                        
//                        VStack {
//                            HStack(spacing:8) {
//                                Image(systemName: "checkmark.square")
//
//                                Text("Reunião com pessoal de design")
//                                    .font(.system(size: 16))
//                                    .multilineTextAlignment(.leading)
//
//                                Spacer()
//                            }
//                            .padding(.vertical, 8)
//                            Divider()
//
//                            HStack(spacing:8) {
//                                Image(systemName: "square")
//
//                                Text("Preparar componentes")
//                                    .font(.system(size: 16))
//                                    .multilineTextAlignment(.leading)
//
//                                Spacer()
//                            }
//                            .padding(.vertical, 8)
//                            Divider()
//
//                            HStack(spacing:8) {
//                                Image(systemName: "square")
//
//                                Text("Implementar mudanças requiridas")
//                                    .font(.system(size: 16))
//                                    .multilineTextAlignment(.leading)
//
//                                Spacer()
//                            }
//                            .padding(.vertical, 8)
//                            Divider()
//
//                            HStack(spacing:8) {
//                                Image(systemName: "square")
//
//                                Text("Codar")
//                                    .font(.system(size: 16))
//                                    .multilineTextAlignment(.leading)
//
//                                Spacer()
//                            }
//                            .padding(.vertical, 8)
//                            Divider()
//
//                        }//vstack dos to-do
//                        .padding(.leading, 16)
                        List {
                            
                            ForEach(items) { item in
                                HstacktodoView(item: item)
                                    .swipeActions {
                                        Button("Excluir") {
                                            viewModel.delete(id: item.id)
                                        }
                                            .tint(.red)
                                    }
                                            }
                            VStack(alignment: .center) {
                                Button(action: { viewModel.showingNewItemView = true
                                       }) {
                                    HStack(spacing: 8) {
                                        Text("Adicionar to-do")
                                            .font(.system(size: 20))
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.blue)
                                            .multilineTextAlignment(.leading)
                                        Image(systemName: "plus.circle")
                                            .font(.system(size: 30))
                                            .foregroundColor(Color.blue)
                                        
                                    }
                                    .sheet(isPresented: $viewModel.showingNewItemView){ NewitemView(newItemPresented: $viewModel.showingNewItemView)}
                                    .padding(8)
                                .padding(.top, 16)
                                   }
                            }
                            .frame(width: 358)
                            
                          
                        }
                        .listStyle(PlainListStyle())
                        
                    }
                }//vstack geral da tela
                .navigationTitle("Códigos")
            }
          .navigationBarItems(
              trailing: Image(systemName: iconenav[0]))
          .symbolRenderingMode(.monochrome)
            /*.toolbar{
             Spacer()
             Image(
             "lucas"
             )
             .resizable()
             .aspectRatio(contentMode: .fit)
             }*/ //toolbar
        
    }
}
        struct TodolistView_Previews: PreviewProvider {
            static var previews: some View {
                TodolistView(userId: "")
            }
        }
