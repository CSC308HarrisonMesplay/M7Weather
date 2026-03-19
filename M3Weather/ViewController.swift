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
    
    
    func getWeatherImage(matching weather: String) -> UIImage? {
        switch weather {
        case "Sunny":
            return UIImage(named: "sunny")
        case "Cloudy":
            return UIImage(named: "cloudy")
        case "Rainy":
            return UIImage(named: "rainy")
        case "Snowy":
            return UIImage(named: "snowy")
        default:
            return nil
        }
    }
        //Module 7 challenge task 5
    func getTemperatureString(matching temperature: Int) -> String {
        switch temperature {
        case ..<19:
            return "Extreme cold"
        case 20..<50:
            return "It's cold outside!"
        case 50..<69:
            return "Cool and mild!"
        case 69..<86:
            return "Warm!"
        case 86...200:
            return "Heat alert"
        default:
            return "No Warning!"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let weather = ["Sunny", "Cloudy", "Rainy", "Snowy"].randomElement( ) ?? "N/A"
        let temperature = Int.random(in: 0 ... 100)
        
        weatherImageView.image = getWeatherImage(matching: weather)
        statusLabel.text = weather
        temperatureLabel.text = "\(temperature)°F"
        warningLabel.text = getTemperatureString(matching: temperature)
    }
    
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

