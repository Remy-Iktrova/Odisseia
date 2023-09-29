//
//  NewitemView.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 21/09/23.
//

import SwiftUI

struct NewitemView: View {
    @StateObject var viewModel = NewitemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("Nova tarefa")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
                .padding(.top, 16.0)
            
            Form {
                TextField("Título da tarefa", text: $viewModel.title)
                DatePicker("Data de entrega", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                ButtonView(action: {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }, title: "Salvar", background: .blue)
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Erro"),
                      message: Text("Por favor preencha todos os campos e selecione uma data de entrega válida."))
            }
        }
    }
}

struct NewitemView_Previews: PreviewProvider {
    static var previews: some View {
        NewitemView(newItemPresented: Binding(get: {return true
            
        }, set: {_ in}))
    }
}
