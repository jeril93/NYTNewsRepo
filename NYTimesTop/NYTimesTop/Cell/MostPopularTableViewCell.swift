//
//  MostPopularTableViewCell.swift
//  NYTimesTop
//
//  Created by Jeril V Raj on 13/06/22.
//

import Foundation
import UIKit


class MostPopularTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var abstractLbl: UILabel!
    @IBOutlet weak var authorLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    @IBOutlet weak var imageIconView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageIconView.clipsToBounds = true;
        imageIconView.layer.cornerRadius = 10;
    }
    
    func configureCell(model: MostPopularNewsModel?) {
        titleLbl.text = model?.title ?? "-----"
        abstractLbl.text = model?.abstract ?? "-----"
        authorLbl.text = model?.byline ?? "-----"
        dateLbl.text = model?.published_date ?? "-----"
        
        if let newsMedia = model?.media?.first, let imagedata = newsMedia.media_metadata?.first, let imageUrl = imagedata.url {
            
            NewsApiManager.getImage(urlString: imageUrl) { (image, error) in
                DispatchQueue.main.async() { () -> Void in
                    self.imageIconView?.image = image
                }
            }
        }
    }
}
