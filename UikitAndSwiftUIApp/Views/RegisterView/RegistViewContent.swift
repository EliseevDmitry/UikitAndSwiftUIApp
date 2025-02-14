//
//  RegistViewContent.swift
//  UikitAndSwiftUIApp
//
//  Created by Dmitriy Eliseev on 15.02.2025.
//

import SwiftUI

struct RegistViewContent: View {
    @State private var myText = ""
    var buttonAction: (String) -> Void
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
               
            VStack {
                Text("Добро пожаловать")
                    .padding(.top, 100)
                    .font(type: .extraBold, size: 14)
                    .foregroundStyle(Color.white)
                //собственный модификатор
                Spacer()
                TextField("Введите текст", text: $myText)
                    .padding(.horizontal, 20)
                    .frame(height: 50)
                    .background(Color.gray)
                    .clipShape(.rect(cornerRadius: 10))
                Spacer()
                Button("Далее"){
                    buttonAction(myText)
                }
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(Color.orange)
                .foregroundStyle(Color.white)
                .clipShape(.rect(cornerRadius: 10))
                .padding(.bottom, 50)
                
            }
            .background(Color.black)
            .padding(.horizontal, 20)
            
        }
    }
        
}

#Preview {
    RegistViewContent {
        $0
    }
}
