//
//  ViewController.swift
//  SPM
//
//  Created by Kaiyrzhan Kural on 05.07.2022.
//

import UIKit
import SnapKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        let title = UILabel()
        title.textColor = .yellow
        title.text = "Hello, World!"
        title.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(title)
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let image = UIImageView()
        image.image = .init(systemName: "star.fill")
        view.addSubview(image)
        image.snp.makeConstraints {
            $0.top.equalTo(title.snp.bottom).offset(20)
            $0.centerX.equalToSuperview()
        }
    }


}

