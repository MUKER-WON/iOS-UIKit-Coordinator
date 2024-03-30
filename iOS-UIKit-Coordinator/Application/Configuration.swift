//
//  Configuration.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/29/24.
//

import UIKit

final class Configuration {
    
    static func buttonConfiguration(
        configuration: UIButton.Configuration,
        title: String?,
        image: UIImage? = nil,
        subTitle: String? = nil,
        backgroundColor: UIColor? = nil
    ) -> UIButton.Configuration {
        var config = configuration
        config.title = title
        config.image = image
        config.subtitle = subTitle
        config.background.backgroundColor = backgroundColor
        return config
    }
}
