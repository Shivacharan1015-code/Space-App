//
//  APODViewController.swift
//  Space App
//
//  Created by Shivacharan Reddy on 07/05/23.
//

import UIKit

class APODViewController: UIViewController {
	
	private let dateForAPOD: UIDatePicker = {
		
		let picker = UIDatePicker()
		picker.preferredDatePickerStyle = .compact
		picker.translatesAutoresizingMaskIntoConstraints = false
		picker.datePickerMode = .date
		return picker
	}()

    override func viewDidLoad() {
        super.viewDidLoad()

		view.backgroundColor = .systemBackground
		title = "Astronomy Picture Of The Dat"
		
		view.addSubview(dateForAPOD)
    }
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		dateForAPOD.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
		dateForAPOD.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
	}

}
