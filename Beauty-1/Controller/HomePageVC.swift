//
//  ViewController.swift
//  Beauty-1
//
//  Created by Nicole on 6/9/2021.
//

import UIKit
import SideMenu

class HomePageVC: UIViewController {
    
    var imageName = ["banner-01", "banner-02", "banner-03"]
    var menu: SideMenuNavigationController?
    
    
    
    var productArray = [ProductStruct]()
    let type = ProductType()
    
    var temp: [ProductType: ProductStruct] = [:]
    
    @IBOutlet weak var bannerCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // menu stuff
        menu = SideMenuNavigationController(rootViewController: MenuTVC())
        menu?.leftSide = true
        menu?.setNavigationBarHidden(true, animated: false)
        
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        
        
        //collection view stuff
        bannerCV.delegate = self
        bannerCV.dataSource = self
        
        //Data Formatting
        productArray.append(ProductStruct(productType: type.M, productName: "123", productCompany: "AHC"))
        productArray.append(ProductStruct(productType: type.M, productName: "456", productCompany: "AHC"))
        productArray.append(ProductStruct(productType: type.M, productName: "789", productCompany: "AHC"))
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func menuButtonClicked(){
        present(menu!, animated: true)
        
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }
}






extension HomePageVC: UICollectionViewDelegate, UICollectionViewDataSource{
    
 

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
}
