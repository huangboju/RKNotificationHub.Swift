//
//  Copyright © 2016年 xiAo_Ju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var hub: RKNotificationHub?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let barButton = UIBarButtonItem(title: "aaaa", style: .Plain, target: self, action: #selector(add))
        navigationItem.leftBarButtonItem = barButton
        hub = RKNotificationHub(barButtonItem: barButton)
        hub?.increment()

    }
    
    func add(sender: UIBarButtonItem) {
        hub?.increment()
        hub?.pop()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

