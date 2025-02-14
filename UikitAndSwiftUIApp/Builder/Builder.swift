//
//  Builder.swift
//  UikitAndSwiftUIApp
//
//  Created by Dmitriy Eliseev on 14.02.2025.
//

import UIKit

protocol IViewProtocol: AnyObject {
    associatedtype PresenterType
    var presenter: PresenterType? { get set }
}

class Builder {
    //view
    //presenter
    
    //повторить дженерики
    static private func createView<View: UIViewController & IViewProtocol>(viewType: View.Type, presenter: (View) -> View.PresenterType) -> UIViewController {
        let view = View()
        let presenter = presenter(view)
        view.presenter = presenter
        return view
    }
    
    //проверить
    static func createRegistView() -> UIViewController {
        return self.createView(viewType: RegistrView.self) { view in
            RegisterViewPresenter(view: view)
        }
    }
}
