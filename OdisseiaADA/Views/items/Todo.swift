//
//  CardView2.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 22/09/23.
//
import SwiftUI

struct listModel {
    var corverdinha: Color = Color(red: 0.0, green: 0.6588235294117647, blue: 0.4196078431372549)
    var imageCard: String
    var Title: String
    var Numtar: String
    var checkVerde: String
    var textoVerde: String
    var check: String
    var text: String
    var text2: String

    
}

struct Todo: View {
    var list: listModel
    var body: some View {
        VStack (spacing: 16){
            
            HStack {
                Image(systemName:list.imageCard)
                    .font(.system(size:30))
                    .symbolRenderingMode(.monochrome)
                Spacer()
                Text(list.Numtar)
                    .font(.system(size:12))
            }
            
            
            
            HStack {
                Text(list.Title)
                    .font(.system(size: 28,weight:.bold))
                Spacer()
            }
            
            HStack (spacing:8){
                VStack {
                    Image(systemName:list.checkVerde)
//                        .foregroundColor(.green)
                        .font(.system(size:16))
                    
                    
                }
                .frame(width:19,height:19)
                
                Text(list.textoVerde)
                    //.foregroundColor(.green)
                    .font(.system(size:12))
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                
                Spacer()
                
                
            }
            HStack (spacing:8){
                VStack {
                    Image(systemName:list.check)
                        .foregroundColor(.black)
                        .font(.system(size:16))
                    
                    
                }
                .frame(width:19,height:19)
                
                Text(list.text)
                    .foregroundColor(.black)
                    .font(.system(size:12))
                
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                
                Spacer()
                
                
            }
            HStack (spacing:8){
                VStack {
                    Image(systemName:list.check)
                        .foregroundColor(.black)
                        .font(.system(size:16))
                    
                    
                }
                .frame(width:19,height:19)
                
                
                Text(list.text2)
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

//struct CardView2: View {
//
//    var list: listModel
//    
//    var body: some View {
//
//        Todo( list:listModel(imageCard: "display", Title: "Códigos", Numtar: "3 tarefas", checkVerde: "checkmark.square", textoVerde: "Reunião com pessoal de design", check: "square", text: "Preparar componentes", text2: "Implementar mudanças requeridas"
//           ))
//    }
//}

struct HstackToDoView_Previews: PreviewProvider {
    static var previews: some View {
        
        Todo( list:listModel(imageCard: "display", Title: "Códigos", Numtar: "3 tarefas", checkVerde: "checkmark.square", textoVerde: "Reunião com pessoal de design", check: "square", text: "Preparar componentes", text2: "Implementar mudanças requeridas"
           ))
    }
}
