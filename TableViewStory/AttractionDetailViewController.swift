//
//  AttractionDetailViewController.swift
//  TableViewStory
//
//  Created by GIJU HONG on 11/5/15.
//  Copyright © 2015 GIJU HONG. All rights reserved.
//

import UIKit

class AttractionDetailViewController: UIViewController {
	
	var webSite: String?
	@IBOutlet var webView: UIWebView!

	override func viewDidLoad() {
		super.viewDidLoad()

		if let address = webSite {
			let webURL = NSURL(string: address)
			let urlRequest = NSURLRequest(URL: webURL!)
			webView.loadRequest(urlRequest)
		}
	}
	
}
