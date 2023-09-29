//
//  CardView.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 22/09/23.
//

import SwiftUI
struct CardView: View {
    
    
    
    var body: some View {
        VStack (spacing: 16){
            
            HStack {
                Image(systemName:"display")
                    .font(.system(size:30))
                    .symbolRenderingMode(.monochrome)
                Spacer()
                Text("3 tarefas")
                    .font(.system(size:12))
            }
            
            
            
            HStack {
                Text("Códigos")
                    .font(.system(size: 28,weight:.bold))
                Spacer()
            }
            
            HStack (spacing:8){
                VStack {
                    Image(systemName:"checkmark.square")
                        .foregroundColor(.green)
                        .font(.system(size:16))
                    
                    
                }
                .frame(width:19,height:19)
                
                Text("Reunião com o pessoal de Design")
                    .foregroundColor(.green)
                    .font(.system(size:12))
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                
                Spacer()
                
                
            }
            HStack (spacing:8){
                VStack {
                    Image(systemName:"square")
                        .foregroundColor(.black)
                        .font(.system(size:16))
                    
                    
                }
                .frame(width:19,height:19)
                
               Text("Preparar componentes")
                    .foregroundColor(.black)
                    .font(.system(size:12))
                
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                
                Spacer()
                
                
            }
            HStack (spacing:8){
                VStack {
                    Image(systemName:"square")
                        .foregroundColor(.black)
                        .font(.system(size:16))
                    
                    
                }
                .frame(width:19,height:19)
                
                
              Text("Implementar mudanças requiridas")
                    .foregroundColor(.black)
                    .font(.system(size:12))
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                
                Spacer()
            }
            
            
        }
        .frame(width:171,height:249)
        
        .padding(16)
        .background(.white)
        .cornerRadius(16)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
    }
    
    
}
struct Listas_de_tarefas_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
