//
//  HomeViewController.swift
//  Lesson
//
//  Created by Руслан Степашин on 11.04.2022.
//

import UIKit

class HomeViewController: UIViewController {

    private let purpleOrWhiteControl = UISegmentedControl ()
    private let logOutButton = UIButton()
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        purpleOrWhiteControl.selectedSegmentTintColor = .white
        purpleOrWhiteControl.setTitle("Purple", forSegmentAt: 0)
        purpleOrWhiteControl.setTitle("White", forSegmentAt: 1)
        purpleOrWhiteControl.backgroundColor = .purple
        purpleOrWhiteControl.setEnabled(true, forSegmentAt: 0)
        purpleOrWhiteControl.contentMode = .scaleToFill
        purpleOrWhiteControl.isEnabled = true
        purpleOrWhiteControl.isUserInteractionEnabled = true
        
        
        logOutButton.setTitle("Log out", for: .normal)
        logOutButton.setTitleColor(.purple, for: .normal)
        logOutButton.titleLabel?.font = .systemFont(ofSize: 14, weight: .regular)
        logOutButton.configuration?.cornerStyle = .capsule
        logOutButton.isEnabled = true
        logOutButton.layer.borderColor = UIColor.purple.cgColor
        
        
        
        
        view.addSubview(purpleOrWhiteControl)
        view.addSubview(logOutButton)
        
        purpleOrWhiteControl.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        purpleOrWhiteControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        purpleOrWhiteControl.widthAnchor.constraint(equalToConstant: 285).isActive = true
        purpleOrWhiteControl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        logOutButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        logOutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = .purple
        }else if sender.selectedSegmentIndex == 1 {
            view.backgroundColor = .systemBackground
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
