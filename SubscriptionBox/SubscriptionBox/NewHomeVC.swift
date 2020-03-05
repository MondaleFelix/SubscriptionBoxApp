//
//  NewHomeVC.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/3/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class NewHomeVC: UIViewController {
        
        var collectionView: UICollectionView!
        
        lazy var sections: [Section] = [
            TitleSection(title: "Featured Categories"),
            FeaturedSection(),
            TitleSection(title: "Last Month's Favorites"),
            FavoritesSection()
        ]
        
        lazy var collectionViewLayout: UICollectionViewLayout = {
            var sections = self.sections
            let layout = UICollectionViewCompositionalLayout { (sectionIndex, environment) -> NSCollectionLayoutSection? in
                return sections[sectionIndex].layoutSection()
            }
            return layout
        }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "Home"
            self.view.backgroundColor = UIColor.white
            setupCollectionView()
        }
    

        func setupCollectionView() {
            collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: collectionViewLayout)
            collectionView.dataSource = self
            collectionView.delegate = self
            collectionView.backgroundColor = UIColor.white
            collectionView.register(UINib(nibName: "TitleCell", bundle: .main), forCellWithReuseIdentifier: TitleCell.identifier)
            collectionView.register(SBCell.self, forCellWithReuseIdentifier: "Cell")
            collectionView.register(SBCollectionViewCell.self, forCellWithReuseIdentifier: "SBCollectionViewCell")

//            collectionView.register(UINib(nibName: "GridCell", bundle: .main), forCellWithReuseIdentifier: GridCell.identifier)
            self.view.addSubview(collectionView)
            collectionView.reloadData()
        }
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            collectionView.reloadData()
        }
        
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            collectionView.reloadData()
        }
    }

    extension NewHomeVC: UICollectionViewDataSource {
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            sections.count
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            sections[section].numberOfItems
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            sections[indexPath.section].configureCell(collectionView: collectionView, indexPath: indexPath)
        }
    }

    extension NewHomeVC: UICollectionViewDelegate {}

    extension NewHomeVC: UICollectionViewDelegateFlowLayout{
        
        func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.bounds.width/2, height: collectionView.bounds.width/3)
        }


        func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }
    }
