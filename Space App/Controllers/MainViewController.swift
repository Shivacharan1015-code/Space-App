//
//  ViewController.swift
//  Space App
//
//  Created by Shivacharan Reddy on 07/05/23.
//

import UIKit

class MainViewController: UIViewController {
	
	private let APODButton: UIButton = {
		
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		button.backgroundColor = .systemGreen
		button.setTitle("APOD", for: .normal)
		button.layer.cornerRadius = 20
		button.layer.masksToBounds = true
		return button
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.addSubview(APODButton)
		APODButton.addTarget(self, action: #selector(goToAPODScreen), for: .touchUpInside)
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		APODButton.widthAnchor.constraint(equalToConstant: view.bounds.width - 50).isActive = true
		APODButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
		APODButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		APODButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
	}
	
	@objc func goToAPODScreen() {
		self.navigationController?.pushViewController(APODViewController(), animated: true)
	}
}

