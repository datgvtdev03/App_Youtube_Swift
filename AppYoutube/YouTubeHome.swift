//
//  YouTubeHome.swift
//  AppYoutube
//
//  Created by Thanh Dat on 13/04/2023.
//

import UIKit

class YouTubeHome: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var tblHome: UITableView!
    let tenVideo = ["Sao nhập ngũ năm 2022", "Những bài hát hay nhất năm 2022", "Lạ lăm à nhaaa"]
    let avtVideo = ["anh1", "anh2", "anh3"]
    let avtKenh = ["anh1", "anh2", "anh3"]
    let tenKenh = ["Sao nhập ngũ - Viettel Media", "Nhạc Chill", "Đông tây Promotion"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblHome.dataSource = self
        tblHome.delegate = self
    

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tenVideo.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblHome.dequeueReusableCell(withIdentifier: "HomeCellIdentifier")!
        let tbltenVideo = cell.viewWithTag(100) as! UILabel
        tbltenVideo.text = tenVideo[indexPath.row]
        let imgVideo = cell.viewWithTag(101) as! UIImageView
        imgVideo.image = UIImage(named: avtVideo[indexPath.row])
        
        let imgAvtKenh = cell.viewWithTag(102) as! UIImageView
        imgAvtKenh.image = UIImage(named: avtKenh[indexPath.row])
        let tbltenKenh = cell.viewWithTag(105) as! UILabel
        tbltenKenh.text = tenKenh[indexPath.row]
        
        return cell
    }
}
