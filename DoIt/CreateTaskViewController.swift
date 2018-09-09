//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Kellen Bolger on 2018-09-08.
//  Copyright © 2018 Kellen Bolger. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
   var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous viewController
  
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    


}
