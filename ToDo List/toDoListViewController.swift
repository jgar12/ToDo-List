//
//  ViewController.swift
//  ToDo List
//
//  Created by Garcia, Jordan - Cathey on 2/1/22.
//

import UIKit

class toDoListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var toDoArray = ["Learn Swift", "Build Apps", "Changethe World", "Take a Vacation"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }


}
extension toDoListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print ("numberofRowsInSection was just called. Returning \(toDoArray.count)")
        return toDoArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print ("cellForRowAt was just called for indexPath.row = \(indexPath.row) which is the cell containing \(toDoArray[indexPath.row])")
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = toDoArray[indexPath.row]
        return cell
    }
    
    
}
