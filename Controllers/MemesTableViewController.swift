//
//  MemesTableViewController.swift
//  MemeMe
//
//  Created by Haya Mousa on 06/05/2019.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class MemesTableViewController: UITableViewController {
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "tableCell")
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell")
        let meme = memes[indexPath.row]
        cell?.imageView?.image = meme.memedImage
        cell?.textLabel?.text = "\(meme.topText)...\(meme.bottomText)..."

        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let meme = memes[indexPath.row]

        let detailController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        detailController.meme = self.memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let meme = memes[indexPath.row]
//        let detail = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailsID") as! DetailsViewController
//        detail.memes = meme
//    }
    
    
   
    
    
}
