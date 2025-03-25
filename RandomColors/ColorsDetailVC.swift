//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Kaushal-VT on 25/03/2025.
//

import UIKit

class ColorsDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tempButtonTapped(_ sender: UIButton) {
        print("Tapped")
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
    
    @IBAction func onFillButtonTap(_ sender: UIButton) {
        print(sender.isUserInteractionEnabled)
        print("Tapped")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
