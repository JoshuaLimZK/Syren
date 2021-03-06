//
//  DisasterTableViewController.swift
//  Syren
//
//  Created by Joshua Lim on 20/8/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import UIKit

class DisasterTableViewController: UITableViewController, UISearchBarDelegate {

    let data = Data()
    
    
    var countrySelected = 0
    var originalCountryNumber = 0
    @IBOutlet weak var searchBar: UISearchBar!
    var filteredData: [String]!
    var filteredRegion: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    
        searchBar.delegate = self
        filteredData = data.countries
        filteredRegion = data.region
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "disasterCell", for: indexPath)

        // Configure the cell...
        
        cell.textLabel?.text = filteredData[indexPath.row]
        for i in 0...data.region.count - 1{
            if data.countries[i] == filteredData[indexPath.row]{
                cell.detailTextLabel?.text = data.region[i]
            }
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        countrySelected = indexPath.row
        performSegue(withIdentifier: "closerLook", sender: nil)
        
        for i in 0...data.countries.count - 1{
            if data.countries[i] == filteredData[indexPath.row]{
                print("original array number \(i)")
                originalCountryNumber = i
            }
        }
        
        UserDefaults.standard.set(filteredData[indexPath.row], forKey: "selectedCountry")
        
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // When there is no text, filteredData is the same as the original data
        // When user has entered text into the search box
        // Use the filter method to iterate over all items in the data array
        // For each item, return true if the item should be included and false if the
        // item should NOT be included
        filteredData = searchText.isEmpty ? data.countries : data.countries.filter { (item: String) -> Bool in
            // If dataItem matches the searchText, return true to include it
            
            return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
        }
        
        tableView.reloadData()
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = true
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        // Stop doing the search stuff
        // and clear the text in the search bar
        searchBar.text = nil
        searchBar.showsCancelButton = false

        // Remove focus from the search bar.
        searchBar.endEditing(true)

        tableView.reloadData()

        
    }
    
    func searchBarDidEndEditing(_searchBar: UISearchBar) {
        tableView.reloadData()

    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "closerLook" {
            let disasterInfoViewController = segue.destination as! DisasterInfoViewController
            disasterInfoViewController.self.title = filteredData[countrySelected]
            disasterInfoViewController.currentCountry = countrySelected
            disasterInfoViewController.originalCountryNo = originalCountryNumber
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
