//
//  LoginButton.swift
//  VK Client
//
//  Created by Const. on 23.06.2020.
//  Copyright © 2020 Oleginc. All rights reserved.
//

import UIKit

class LoginButton: UIButton {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    // MARK: - Setup
    
    private func setupButton() {
        self.layer.cornerRadius = 10
        self.backgroundColor = .white
        self.setTitle("Войти", for: .normal)
        self.setTitleColor(.black, for: .normal)
    }
    
    // MARK: - Events
    
    override var isEnabled: Bool {
        didSet {
            guard oldValue != isEnabled else {
                return
            }
            if oldValue == true {
                buttonTouchedIn(with: 0.3)
            } else {
                buttonTouchedOut(with: 0.3)
            }
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            if oldValue != isHighlighted {
                updateAppearance()
            }
        }
    }
    
    private func updateAppearance() {
      if (isSelected || isHighlighted) && isEnabled {
        buttonTouchedIn(with: 0.05)
      } else {
        buttonTouchedOut(with: 0.05)
      }
    }
    
    private func buttonTouchedIn(with duration: Double) {
      UIView.animate(withDuration: duration, animations: {
        self.backgroundColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1)
      })
    }
    
    private func buttonTouchedOut(with duration: Double) {
      UIView.animate(withDuration: duration, animations: {
        self.backgroundColor = .white
      })
    }
    
}
