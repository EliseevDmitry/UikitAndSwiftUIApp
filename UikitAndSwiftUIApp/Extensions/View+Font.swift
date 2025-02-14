//
//  View+Font.swift
//  UikitAndSwiftUIApp
//
//  Created by Dmitriy Eliseev on 15.02.2025.
//

import SwiftUI

extension View {
    
    func font(type: FontType = .regular, size: CGFloat = 14) -> some View {
        modifier(CustomFont(font: type, size: size))
    }
    
}
