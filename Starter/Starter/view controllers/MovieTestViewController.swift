//
//  MovieTestViewController.swift
//  Starter
//
//  Created by Thet Hsu Myat on 2022/02/08.
//

import UIKit

class MovieTestViewController: UIViewController {

    @IBOutlet weak var CollectionViewMovie: UICollectionViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CollectionViewMovie.dataSource=self
        CollectionViewMovie.delegate=self
        CollectionViewMovie.register(UINib(nibName: String(describing: SampleCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: SampleCollectionViewCell.self))
        
        // Do any additional setup after loading the view.
    
    }
}
extension MovieViewController:UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell=collectionView.dequeueReusableCell(withReuseIdentifier: String(describing:SampleCollectionViewCell.self), for: indexPath) as? SampleCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }
}
