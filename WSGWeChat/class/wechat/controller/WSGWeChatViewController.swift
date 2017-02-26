//
//  WSGWeChatViewController.swift
//  WSGWeChat
//
//  Created by 王帅广 on 2016/12/18.
//  Copyright © 2016年 王帅广. All rights reserved.
//

import UIKit

class WSGWeChatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "微信";
        
        let tableView = UITableView(frame: CGRect(x:0,y:0,width:self.view.frame.size.width,height:self.view.frame.size.height));
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.tableFooterView = UIView();
        tableView.register(WSGWeChatTableViewCell.self, forCellReuseIdentifier: "WSGWeChatTableViewCell")
        view.addSubview(tableView);
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WSGWeChatTableViewCell", for: indexPath) as! WSGWeChatTableViewCell;
        
        cell.textField.text = "飞";
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50;
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
