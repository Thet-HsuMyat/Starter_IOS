//
//  PopularFilmTableViewCell.swift
//  Starter
//
//  Created by Thet Hsu Myat on 2022/02/10.
//

import UIKit

class PopularFilmTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionViewMovies: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionViewMovies.dataSource=self
        collectionViewMovies.delegate=self
        collectionViewMovies.register(UINib(nibName: String(describing: PopularFlimCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: PopularFlimCollectionViewCell.self))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension PopularFilmTableViewCell:UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    10
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell=collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PopularFlimCollectionViewCell.self), for: indexPath) as? PopularFlimCollectionViewCell else{
        return UICollectionViewCell()
        
    }
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/3, height: CGFloat(210))
    }
}
