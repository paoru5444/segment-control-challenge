//
//  ViewController.swift
//  segment-control-challenge
//
//  Created by Paulo Roberto on 02/05/22.
//

import UIKit

class People {
    let name: String
    let img: String
    
    init(name: String, img: String) {
        self.name = name;
        self.img = img
    }
}

class ViewController: UIViewController {
    
    @IBOutlet var listSegmentControl: UISegmentedControl!
    @IBOutlet weak var peopleTableView: UITableView!
    
    let people: [People] = [
        People(name: "Rafa", img: "avatar"),
        People(name: "Paulo", img: "avatar"),
        People(name: "Artur", img: "avatar")
    ]
    
    let developer: [People] = [
        People(name: "Rafa", img: "computador-desktop"),
        People(name: "Paulo", img: "computador-desktop"),
        People(name: "Artur", img: "computador-desktop")
    ]
    
    var selectedOption: [People] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        peopleTableView.dataSource = self
        selectedOption = people
        print(selectedOption)
    }


    @IBAction func segmentSelectedAction(_ sender: Any) {
        let index = listSegmentControl.selectedSegmentIndex
        
        peopleTableView.reloadData()
        switch index {
        case 0:
            selectedOption = people
        case 1:
            selectedOption = developer
        default:
            break
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedOption.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "people-identifier") as? CustomTableViewCell {
            
            cell.set(
                name: selectedOption[row].name,
                img: selectedOption[row].img
            )
            
            return cell
        }
            
        return UITableViewCell()
    }
    
    
}

