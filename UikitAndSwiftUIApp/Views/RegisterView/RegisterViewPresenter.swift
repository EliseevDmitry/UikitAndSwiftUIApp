//
//  RegisterPresenter.swift
//  UikitAndSwiftUIApp
//
//  Created by Dmitriy Eliseev on 14.02.2025.
//

import Foundation

protocol IRegisterViewPresenter: AnyObject {
    
}

//разобраться для чего тут any
class RegisterViewPresenter: IRegisterViewPresenter {
    weak var view: (any IRegistView)?
    
    init(view: (any IRegistView)) {
        self.view = view
    }
}
