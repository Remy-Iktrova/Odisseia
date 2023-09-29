//
//  ChallengeView.swift
//  OdisseiaADA
//
//  Created by Malu on 19/09/23.
//

import SwiftUI
struct ChallengeView: View {
    @State private var progressValue: Float = 0.5
    var body: some View {
      
            
              //  .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
             
                
                ScrollView {
                    VStack{
                        Image("escads")
                            .resizable()
                            .frame(width: 395, height:209)
                            .scaledToFit()
                            .overlay(
                                LinearGradient(gradient:Gradient(colors: [Color.white.opacity(1),Color.clear]), startPoint: .bottom, endPoint: .top)
                            .frame(height:209)
                        )
                            
                        
                        Spacer()
                        
                        
                            
                        
                        
                        VStack(alignment: .leading, spacing: 16.0) {
                            Text("Challenge")
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity,alignment: .leading)
                            Text("Montar um app é um desafio que requer planejamento, conhecimento técnico e dedicação. Existem muitos fatores a serem considerados, desde a escolha da plataforma e linguagem de programação até o desenvolvimento das funcionalidades e a distribuição do aplicativo.")
                            
                            
                            Spacer()
                            
                                HStack {
                                    Image(systemName: "lightbulb")
                                    Text("Big Idea: Aplicativo")
                                    Spacer()
                                    
                                    
                                }
                                
                                HStack {
                                    Text("Começo: 01/02/2024")
                                        .font(.system(size: 12))
                                    Text("Entrega: 01/03/2024")
                                        .font(.system(size: 12))
                                        
                                    
                                    
                                
                            }
                        }.padding(.leading)
                        
                        HStack {
                            
                            VStack {
                                HStack {
                                    Text("Membros")
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                }
                                
                                
                                HStack {
                                    Image("Avatar")
                                        .resizable()
                                        .aspectRatio(contentMode:.fill)
                                        .frame(width:32,height:32)
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
                                    
                                    
                                    
                                }
                                
                            }.frame(width:150,height:32)
                                .padding(.horizontal,20.0)
                                .padding(.vertical,20.0)
                                .background(.white)
                                .cornerRadius(16)
                                .shadow(radius: 10)
                            
                            HStack {
                                Text("Grupo de tarefas")
                                    .font(.system(size:20))
                                    .fontWeight(.semibold)
                                    .lineLimit(2)
                                    .frame(width: 97, height: 48)
                          
                                
                            } .frame(width:100, height: 30)
                                .padding(.horizontal,20.0)
                                .padding(.vertical,20.0)
                                .background(.white)
                                .cornerRadius(16)
                                .shadow(radius: 10)
                            
                        }
                        
                        
                        .navigationTitle("Challenge atual")
                        .toolbar {
                        }
                        
                        Button(action: {
                            print("Clicked")
                        }) {
                            HStack {
                                Spacer()
                                Text("Concluído!")
                                    .padding()
                                Spacer()
                            }
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .background(.green)
                            .cornerRadius(15)
                            .padding(.horizontal, 20)
                            
                            
                            
                        }
                        .padding(.top, 16.0)
                        
                        
                    
                    }
            }.background(
                Image("play")
                    .resizable()
                    .scaledToFill()
            )
        
    }
    struct ChallengeView_Previews: PreviewProvider {
        static var previews: some View {
            ChallengeView()
        }
    }
    
    
    
}
