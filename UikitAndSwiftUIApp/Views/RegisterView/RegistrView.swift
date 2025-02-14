//
//  RegistrView.swift
//  UikitAndSwiftUIApp
//
//  Created by Dmitriy Eliseev on 14.02.2025.
//

import UIKit
import SwiftUI

protocol IRegistView: IViewProtocol {
    
}


class RegistrView: UIViewController, IRegistView {
    typealias PresenterType = IRegisterViewPresenter
    var presenter: PresenterType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contentView = RegistViewContent() //SUI View
        let content = UIHostingController(rootView: contentView)
        //addChild(content)
        content.view.frame = view.frame
        view.addSubview(content.view)
        content.didMove(toParent: self)
        
        
    }
}
