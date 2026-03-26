//
//  ViewController.swift
//  M3Weather
//
//  Created by Mesplay, Harrison W. on 2/5/26.
//

import UIKit

enum Weather: String{
    case sunny = "Sunny"
    case cloudy = "Cloudy"
    case rainy = "Rainy"
    case snowy = "Snowy"
    
    var image: UIImage? {
        switch self {
        case .sunny:
            return UIImage(named: "sunny")
        case .cloudy:
            return UIImage(named: "cloudy")
        case .rainy:
            return UIImage(named: "rainy")
        case .snowy:
            return UIImage(named: "snowy")
        }
    }
    
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
}

class ViewController: UIViewController {
    
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var warningLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let weather = [Weather.sunny, .cloudy, .rainy, .snowy].randomElement( ) ?? .sunny
        let temperature = Int.random(in: 0 ... 100)
        
        weatherImageView.image = weather.image
        statusLabel.text = weather.rawValue
        temperatureLabel.text = "\(temperature)°F"
        warningLabel.text = weather.getTemperatureString(matching: temperature)
    }
}
