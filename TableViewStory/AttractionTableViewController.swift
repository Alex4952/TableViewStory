//
//  AttractionTableViewController.swift
//  TableViewStory
//
//  Created by GIJU HONG on 11/5/15.
//  Copyright © 2015 GIJU HONG. All rights reserved.
//

import UIKit

class AttractionTableViewController: UITableViewController {
	
	var attractionImages = [String]()
	var attractionNames = [String]()
	var webAddresses = [String]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		attractionNames = ["Buckingham Palace",
			"The Eiffel Tower",
			"The Grand Canyon",
			"Windsor Castle",
			"Empire State Building"]
		
		webAddresses = ["http://en.wikipedia.org/wiki/Buckingham_Palace",
			"http://en.wikipedia.org/wiki/Eiffel_Tower",
			"http://en.wikipedia.org/wiki/Grand_Canyon",
			"http://en.wikipedia.org/wiki/Windsor_Castle",
			"http://en.wikipedia.org/wiki/Empire_State_Building"]
		
		attractionImages = ["buckingham_palace.jpg",
			"eiffel_tower.jpg",
			"grand_canyon.jpg",
			"windsor_castle.jpg",
			"empire_state_building.jpg"]
		
		tableView.estimatedRowHeight = 50
	}
	
	// MARK: - Table view data source
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		// Return the number of sections.
		return 1
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// 테이블에서 표시될 행의 개수
		return attractionNames.count
	}
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("AttractionTableCell", forIndexPath: indexPath) as! AttractionTableViewCell
		
		// Configure the cell...
		
		let row = indexPath.row
		cell.attractionLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
		cell.attractionLabel.text = attractionNames[row]
		cell.attractionImage.image = UIImage(named: attractionImages[row])
		
		return cell
	}
	
	// ATS (App Transport Security)
	// ios9 부터 https 만 허용하도록 규정이 바뀜
	// info.plist 우클릭 -> Open As -> Source Code
	/*
	<key>NSAppTransportSecurity</key>
	<dict>
	<key>NSAllowsArbitraryLoads</key>
	<true/>
	</dict>
	*/
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		if segue.identifier == "ShowAttractionDetails" {
			
			let detailViewController = segue.destinationViewController as! AttractionDetailViewController
			let myIndexPath = self.tableView.indexPathForSelectedRow
			let row = myIndexPath?.row
			detailViewController.webSite = webAddresses[row!]
		}
	}
	
	
	/*
	// Override to support conditional editing of the table view.
	override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
	// Return false if you do not want the specified item to be editable.
	return true
	}
	*/
	
	/*
	// Override to support editing the table view.
	override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
	if editingStyle == .Delete {
	// Delete the row from the data source
	tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
	} else if editingStyle == .Insert {
	// Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
	}
	}
	*/
	
	/*
	// Override to support rearranging the table view.
	override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
	
	}
	*/
	
	/*
	// Override to support conditional rearranging of the table view.
	override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
	// Return false if you do not want the item to be re-orderable.
	return true
	}
	*/
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	// Get the new view controller using segue.destinationViewController.
	// Pass the selected object to the new view controller.
	}
	*/
	
}
