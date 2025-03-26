//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Kaushal-VT on 25/03/2025.
//

import UIKit

class ColorsTableVC: UIViewController {
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()

        // Do any additional setup after loading the view.
    }
    
    func createRandomColors(){
        
        for _ in 0..<50{
            colors.append(createRandomColor())
        }
    }
    
    func createRandomColor() -> UIColor{
        return UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
    }
    
    

}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell")
        let color = colors[indexPath.row]
        cell?.backgroundColor = color
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
        
    }
    
    
}
