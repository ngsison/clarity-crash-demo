//
//  ViewController.swift
//  ClarityDemo
//
//  Created by Nathaniel Brion Sison on 1/17/25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc
    func buttonTapped() {
        let popup = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Popup")
        present(popup, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(120)
            make.height.equalTo(44)
        }
    }
}
