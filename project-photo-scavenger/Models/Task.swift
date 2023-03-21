//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your workout Spot👟",
                 description: "Where Do you go, when you're trying to get into a better shape? "),
            Task(title: "Who's your suga supplier?🍰",
                 description: "Where do you go for a nice desert? "),
            Task(title: "Where do you study? 📚☕️",
                 description: "Where do you go to get smarter"),
            Task(title: "Where do you hangout with your friends?🎧",
                 description: "Show me your friends and I will show your your future")
        ]
    }
}
