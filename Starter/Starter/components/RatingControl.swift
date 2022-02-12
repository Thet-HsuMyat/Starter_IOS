//
//  RatingControl.swift
//  Starter
//
//  Created by Thet Hsu Myat on 2022/02/09.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    /*
    // Only override draw() if you perform custom drawing.    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: ) {
        // Drawing code
    }
    */
    @IBInspectable var starSize:CGSize = CGSize(width: 13.0, height: 13.0){
        didSet{
            setUpButtons()
        }
    }
    @IBInspectable var starCount : Int=0{
        didSet{
            setUpButtons()
        }
    }
    @IBInspectable var rating:Int=0{
        didSet{
            updateButtonRating()
        }
    }
   // @IBInspectable var starSize:CGSize=CGSize(width: 50.0, height: 50.0)
   // @IBInspectable var starCount:Int=7
    //@IBInspectable var rating:Int=3
    
    var ratingButtons=[UIButton]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButtons()
        updateButtonRating()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setUpButtons()
        updateButtonRating()
    }
    
    private func setUpButtons(){
        for _ in 0..<starCount{
            let button=UIButton()
            
            button.setImage(UIImage(named: "filledStar"), for: .selected)
            button.setImage(UIImage(named: "emptyStar"), for: .normal)
            
            button.translatesAutoresizingMaskIntoConstraints=false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive=true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive=true
            
            addArrangedSubview(button)
            button.isUserInteractionEnabled=false
            
            ratingButtons.append(button)
        }
        
    }
    private func updateButtonRating(){
        for (index,button) in ratingButtons.enumerated(){
            button.isSelected = index < rating
        }
    }
    
}
