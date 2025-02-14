//
//  ViewController.swift
//  UikitAndSwiftUIApp
//
//  Created by Dmitriy Eliseev on 14.02.2025.
//

import UIKit
import Lottie
import SnapKit

class ViewController: UIViewController {
    
    private lazy var lottieView: LottieAnimationView = {
        $0.loopMode = .loop
        return $0
    }(LottieAnimationView(name: "books"))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupViews()
        setupConstraints()
        startAnimation()
        
        let workItem1 = DispatchWorkItem {
            print("Анимация запущена")
            NotificationCenter.default.post(name: .windowManager, object: nil, userInfo: ["windowInfo": WindowCase.reg])
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: workItem1)
        
        /*
        //вывод названий шрифтов
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
         */
    }
}

extension ViewController {
    
    private func setupViews() {
        [lottieView].forEach { views in
            view.addSubview(views)
        }
    }
    
    private func setupConstraints(){
        lottieView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.width.equalTo(200)
        }
    }
    
    private func startAnimation(){
        lottieView.play()
    }
}
