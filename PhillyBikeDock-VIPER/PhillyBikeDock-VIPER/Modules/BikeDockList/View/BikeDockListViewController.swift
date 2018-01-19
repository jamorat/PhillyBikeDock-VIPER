//
//  BikeDockListViewController.swift
//  PhillyBikeDock-VIPER
//
//  Created by Jack Amoratis on 1/7/18.
//  Copyright © 2018 Jack Amoratis All rights reserved.
//

import UIKit

class BikeDockListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    }
    
    var presenter: BikeDockListPresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        // Do any additional setup after loading the view.
    }

    func setupView(){
        bikeDockListTableView.dataSource = self
        bikeDockListTableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension BikeDockListViewController : BikeDockListView {
    func showNoContentScreen() {
        print("show no content screen")
    }
    
    
}
