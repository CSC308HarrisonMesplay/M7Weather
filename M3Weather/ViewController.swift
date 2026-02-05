//
//  ViewController.swift
//  M3Weather
//
//  Created by Mesplay, Harrison W. on 2/5/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var warningLabel: UILabel!
    
    let weather = "sunny"
    let temperature = 78
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch weather{
        case "sunny":
            weatherImageView.image = UIImage(named: "sunny")
        case "cloudy":
            weatherImageView.image = UIImage(named: "cloudy")
        case "rainy":
            weatherImageView.image = UIImage(named: "rainy")
        case "snowy":
            weatherImageView.image = UIImage(named: "snowy")
        default:
            break
        }
        //M3 challenge task1
        /*if else
        if temperature < 20{
            warningLabel.text = "Extreme cold"
        }else if temperature >= 20 && temperature < 50{
            warningLabel.text = "It's cold outside!"
        }else if temperature >= 50 && temperature < 69{
            warningLabel.text = "Cool and mild!"
        }else if temperature >= 69 && temperature < 86{
            warningLabel.text = "Warm!"
        }else if temperature > 85 {
            warningLabel.text = "Heat alert"
        }else{
            warningLabel.text = "No warning!"
        }
         */
        //switch
        switch temperature{
        case ..<19:
            warningLabel.text = "Extreme cold"
        case 20..<50:
            warningLabel.text = "It's cold outside!"
        case 50..<69:
            warningLabel.text = "Cool and mild!"
        case 69..<86:
            warningLabel.text = "Warm!"
        case 86...200:
            warningLabel.text = "Heat alert"
        default:
            warningLabel.text = "No warning!"
        }
    }
    
}
