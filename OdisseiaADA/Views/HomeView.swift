//
//  HomeView.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 20/09/23.
//

import SwiftUI
struct HomeView: View {
    
    
    var body: some View{
        NavigationView {
            
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    VStack{
                        Text("Listas\nde tarefas")
                            .foregroundColor(.black)
                            .font(.system(size: 50,weight:.bold))
                            
                        
                    }
                    .padding(.leading)
                    HStack {
                        Spacer()
                        Button{
                        }label:{
                            Image(systemName:"eye.circle")
                                .foregroundColor(.blue)
                                .font(.system(size:22))
                        }
                        Button{
                        }label:{
                            Image(systemName:"plus.circle")
                                .foregroundColor(.blue)
                                .font(.system(size:22))
                        }
                        
                    }
                    .padding(.trailing, 16.0)
                    
                    // .padding(.top,8)
                    //.padding(.bottom,16)
                    
                    
                    
                    ScrollView (.horizontal){
                        HStack(spacing: 40) {
                            
                            NavigationLink(destination: TodolistView(userId: ""), label:{
                                Todo(list: listModel(imageCard: "display", Title: "Códigos", Numtar: "3 tarefas", checkVerde: "checkmark.square", textoVerde: "Reunião com pessoal de design", check: "square", text: "Preparar componentes", text2: "Implementar mudanças requeridas"))
                                    .padding(.leading, 16.0)
                                    .padding(.top, 30.0)
                                    .padding(.bottom, 20.0)
                                    .tint(.black)
                            })
                            Button(action: {}, label: {
                                    Todo(list: listModel(imageCard: "pencil.and.outline", Title: "Design", Numtar: "3 tarefas", checkVerde: "checkmark.square", textoVerde: "Entrevistar usuários do aplicativo", check: "square", text: "Braistorm da solução", text2: "Prototipar high-fidelity"))
                                        .padding(.trailing, 16.0)
                                        .padding(.top, 30.0)
                                        .padding(.bottom, 20.0)
                                        .tint(.black)
                            })
                        }
                        
                        //.clipped(antialiased: false)
                        //encerramento do HStack com a View lista de tarefas
                    }
                    
                    //.clipped(antialiased: false)
                    //encerramento da scrollView horizontal
                    HStack{
                        Text("Atividade")
                            .foregroundColor(.black)
                            .font(.system(size: 28,weight:.bold))
                        
                        
                    }
                    .padding(.leading, 16.0)
                    Spacer()
                    VStack(alignment: .leading){
                        
                        VStack{
                            
                            HStack {
                                
                                Text("Proxima aula")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20,weight:.bold))
                                    .multilineTextAlignment(.leading)
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("02/02/2024")
                                    .foregroundColor(.black)
                                    .font(.system(size: 12))
                                    .multilineTextAlignment(.leading)
                                Spacer()
                            }
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 4.0)
                        
                        
                    }
                    .background(.white)
                    .cornerRadius(16)
                    .padding(.horizontal, 16.0)
                    .padding(.vertical, 4.0)
                    
                    
                    .shadow(radius: 10)
                    
                    // Spacer()
                    
                    ZStack {
                        
                        Image("escadinha")
                            .resizable()
                            .frame(width: 358, height: 105)
                            .scaledToFit()
                            .overlay(
                                LinearGradient(gradient:Gradient(colors: [Color.white.opacity(2), Color.clear]), startPoint: .leading,endPoint: .trailing)
                                    .frame(height:358)
                            )
                            .cornerRadius(16)
                        
                        
                        NavigationLink(destination: ChallengeView(), label:{
                            VStack{
                                VStack(alignment: .leading){
                                    HStack{
                                        Image("Lucas")
                                            .resizable()
                                            .aspectRatio(contentMode:.fill)
                                            .frame(width:32,height:32)
                                            .clipShape(Circle())
                                        Image("Frame 243")
                                            .resizable()
                                            .aspectRatio(contentMode:.fill)
                                            .frame(width:32,height:32)
                                            .clipShape(Circle())
                                        Image("Frame 242")
                                            .resizable()
                                            .aspectRatio(contentMode:.fill)
                                            .frame(width:32,height:32)
                                            .clipShape(Circle())
                                        Image("Frame 241")
                                            .resizable()
                                            .aspectRatio(contentMode:.fill)
                                            .frame(width:32,height:32)
                                            .clipShape(Circle())
                                        
                                        // Spacer()
                                        
                                    }
                                  
                                    
                                    VStack(alignment: .leading){
                                        
                                        HStack {
                                            Text("Challenge atual")
                                                .foregroundColor(.black)
                                                .font(.system(size: 30,weight:.bold))
                                                .multilineTextAlignment(.leading)
                                            
                                            Spacer()
                                        }
                                        
                                        HStack {
                                            Text("01/03/2024")
                                                .foregroundColor(.black)
                                                .font(.system(size: 12))
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                        // .padding(.leading, 16.0)
                                        
                                    }
                                }
                            }
                            .padding(.horizontal, 16.0)
                            .padding(.vertical, 8.0)
                            
                        })
                        
                        
                    }
                    .padding(.horizontal, 16.0)
                    .padding(.vertical, 10.0)
                    
                    .cornerRadius(16)
                    .shadow(radius: 10)
                    
                    
                }//encerramento do VStack inicial
                
                //.padding()
                
                
                
            }//encerramento da scrollView inicial
            
            
            
            
            .padding(16)
            
            .navigationTitle("Olá, Lucas")
            
            .toolbar {
                
                Spacer()
                NavigationLink(destination: ProfileView(), label:{
                    Image("Lucas")
                        .resizable()
                        .aspectRatio(contentMode:.fill)
                        .frame(width:40,height:40)
                        .clipShape(Circle())
                })
                
                
            }//navigationView
            .background(
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
            )
            
            //.padding(16)
            
        }
        //ZStack
        
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
            
        }
    }
}
