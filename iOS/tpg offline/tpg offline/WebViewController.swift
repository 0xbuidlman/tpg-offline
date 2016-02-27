//
//  WebViewController.swift
//  tpg offline
//
//  Created by remy on 25/02/16.
//  Copyright © 2016 dacostafaro. All rights reserved.
//

import UIKit
import Google

class WebViewController: UIViewController {

	@IBOutlet weak var webView: UIWebView!
	
	var url: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
		webView.loadRequest(NSURLRequest(URL: NSURL(string: url)!))
        // Do any additional setup after loading the view.
    }
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		self.actualiserTheme()
		webView.backgroundColor = AppValues.primaryColor
		
		if !(NSProcessInfo.processInfo().arguments.contains("-withoutAnalytics")) {
			let tracker = GAI.sharedInstance().defaultTracker
			tracker.set(kGAIScreenName, value: "WebViewController")
			tracker.send(GAIDictionaryBuilder.createScreenView().build() as [NSObject : AnyObject]!)
		}
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
