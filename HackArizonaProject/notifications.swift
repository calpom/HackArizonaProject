//
//  notifications.swift
//  HackArizonaProject
//
//  Created by Kaleb Markos on 1/13/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//

import UIKit
import UserNotifications

class notifications: UIViewController {
    
    static var theNotifications = [UNMutableNotificationContent]()
    var dayCode = ["Sunday":1, "Monday":2, "Tuesday":3, "Wednesday":4, "Thursday":5, "Friday":6, "Saturday":7]
    
    @IBAction func makeCall(_ sender: Any) {
        guard let number = URL(string: "tel://" + "19282779224") else { return }
        UIApplication.shared.open(number)
        
    }
    @IBAction func buttonPress(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "You chose Spiderman!"
        content.subtitle = "Green Goblin"
        content.body = "Let die the woman you love or suffer the little children!"
        content.badge = 1
        var date = DateComponents()
        date.hour = 20
        date.minute = 27
        date.weekday = 7
        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: false)
        let request = UNNotificationRequest(identifier: "Times up!", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        notifications.theNotifications.append(content)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {didAllow, error in})
        // Do any additional setup after loading the view.
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

