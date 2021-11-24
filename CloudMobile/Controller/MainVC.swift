//
//  LoginVC.swift
//  CloudMobile
//
//  Created by Egemen on 24.10.2021.
//

import UIKit


class MainVC: UITableViewController {
    
    var logo = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Cloud Mobile"
        navigationController?.navigationBar
            .prefersLargeTitles = true
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        
        for item in items{
            if item.hasPrefix("apple"){
                logo.append(item)
            }
        }

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return logo.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = logo[indexPath.row]
        cell.imageView?.image = UIImage.init(named: "apple")
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    


}
