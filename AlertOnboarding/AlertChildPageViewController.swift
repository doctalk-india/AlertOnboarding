//
//  AlertChildPageViewController.swift
//  AlertOnboarding
//
//  Created by Philippe on 26/09/2016.
//  Copyright © 2016 CookMinute. All rights reserved.
//

import UIKit

class AlertChildPageViewController: UIViewController {

    var pageIndex: Int!

    let image: UIImageView = .init()
    let labelMainTitle: UILabel = .init()
    let labelDescription: UILabel = .init()

    let imageContainerView = UIView()
    let textContainerView = UIView()

    // - MARK - Init methods

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // - MARK - Lifecycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

}

// - MARK - UI

extension AlertChildPageViewController {

    func setupUI() {
        image.translatesAutoresizingMaskIntoConstraints = false
        labelMainTitle.translatesAutoresizingMaskIntoConstraints = false
        labelDescription.translatesAutoresizingMaskIntoConstraints = false
        imageContainerView.translatesAutoresizingMaskIntoConstraints = false
        textContainerView.translatesAutoresizingMaskIntoConstraints = false

        image.contentMode = .scaleToFill

        labelMainTitle.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        labelDescription.font = UIFont.systemFont(ofSize: 13)
        labelDescription.numberOfLines = 0

        addSubviews()
        addConstraints()
    }

    private func addSubviews() {
        imageContainerView.addSubview(image)
        view.addSubview(imageContainerView)
        textContainerView.addSubview(labelMainTitle)
        textContainerView.addSubview(labelDescription)
        view.addSubview(textContainerView)
    }

    private func addConstraints() {
        imageContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imageContainerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.65).isActive = true

        textContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        textContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        textContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        textContainerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        textContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.35).isActive = true

        image.centerXAnchor.constraint(equalTo: imageContainerView.centerXAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: imageContainerView.centerYAnchor).isActive = true
        image.widthAnchor.constraint(equalTo: imageContainerView.widthAnchor, multiplier: 0.8).isActive = true
        image.heightAnchor.constraint(equalTo: imageContainerView.heightAnchor, multiplier: 0.8).isActive = true

        labelMainTitle.leftAnchor.constraint(equalTo: textContainerView.leftAnchor, constant: 10).isActive = true
        labelMainTitle.topAnchor.constraint(equalTo: textContainerView.topAnchor, constant: 10).isActive = true
        labelMainTitle.rightAnchor.constraint(equalTo: textContainerView.rightAnchor, constant: -10).isActive = true

        labelDescription.topAnchor.constraint(equalTo: labelMainTitle.bottomAnchor, constant: 10).isActive = true
        labelDescription.leftAnchor.constraint(equalTo: textContainerView.leftAnchor, constant: 10).isActive = true
        labelDescription.rightAnchor.constraint(equalTo: textContainerView.rightAnchor, constant: -10).isActive = true
    }
}
