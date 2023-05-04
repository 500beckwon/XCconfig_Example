//
//  ViewController.swift
//  PhaseEx
//
//  Created by dev dfcc on 2023/05/04.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    lazy private var sampleView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(sampleView)
        sampleView.backgroundColor = .red
        sampleView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.height.equalTo(view.bounds.height/2)
        }
        
        print(Environment.apiKey)
        print(Environment.rootURL)
        
        /*
         production
         9ud0930djd_md9zdjdko3830lb0d
         https://www.mytestapp.thoughtbot.com
         
         development
         783u9djd8a_hkzos7jd803001nd
         http://localhost:3000
         
         staging
         89dhdyd93380dkqmoe_hd830dhq
         https://www.staging.mytestapp.thoughtbot.com
         */
    }


}

