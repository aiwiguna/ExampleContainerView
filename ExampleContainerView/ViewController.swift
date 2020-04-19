//
//  ViewController.swift
//  ExampleContainerView
//
//  Created by Antoni Wiguna on 19/04/20.
//  Copyright © 2020 aiwiguna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var containerViewController: UIViewController?

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		if let vc = containerViewController as? ContainerViewController{
			print(vc.dataContainer)
		}
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "container" {
			if let dest = segue.destination as? ContainerViewController {
				containerViewController = dest
			}
		}
	}

}

