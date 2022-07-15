//
//  ViewController.swift
//  SpartacusBook
//
//  Created by Erdem Papakçı on 14.07.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    var gladiators = [SpartacusObj]()
    var chosenGladiator : SpartacusObj?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.dataSource = self
        tableView.delegate = self
       
        let spartacus = SpartacusObj(nameInit: "Spartacus", powerInit: "++++", imageInit: UIImage(named: "spartacuss")!)
        let crixus = SpartacusObj(nameInit: "Crixus", powerInit: "+++", imageInit: UIImage(named: "crixus")!)
        let gannicus = SpartacusObj(nameInit: "Gannicus", powerInit: "++++", imageInit: UIImage(named: "gannicus")!)
        let glaber = SpartacusObj(nameInit: "Glaber", powerInit: "++", imageInit: UIImage(named: "glaber")!)
        let agron = SpartacusObj(nameInit: "Agron", powerInit: "+", imageInit: UIImage(named: "agron")!)
        let batiatus = SpartacusObj(nameInit: "Batiatus", powerInit: "+", imageInit: UIImage(named: "batiatuss")!)
        
        gladiators.append(spartacus)
        gladiators.append(crixus)
        gladiators.append(gannicus)
        gladiators.append(glaber)
        gladiators.append(agron)
        gladiators.append(batiatus)
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = gladiators[indexPath.row].name
        return cell
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gladiators.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenGladiator = gladiators[indexPath.row]
        self.performSegue(withIdentifier: "toViewController2", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toViewController2" {
            let destinationVC = segue.destination as! ViewController2
            destinationVC.selectedGladiator = chosenGladiator
            
        }
       
    }
                     
}

