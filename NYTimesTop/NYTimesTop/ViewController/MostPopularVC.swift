//
//  MostPopularVC.swift
//  NYTimesTop
//
//  Created by Jeril V Raj on 13/06/22.
//

import Foundation
import UIKit


class MostPopularVC: BaseVC {
    
    @IBOutlet var tableView: UITableView!
    
    var viewModel = MostPopularVM()
    private let refreshControl = UIRefreshControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        setUpTableView()
        showLoader()
        viewModel.getNews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setNavigationBar()
        navigationItem.title = StringConstants.NavTitle.navigationTitle
    }
    
    func setUpTableView() {
        refreshControl.addTarget(self, action: #selector(refreshView), for: .valueChanged)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.refreshControl = refreshControl
        tableView.register(UINib(nibName: "MostPopularTableViewCell", bundle: nil), forCellReuseIdentifier: "mostPopularTableViewCell")
        tableView.estimatedRowHeight = 250
    }
    
    func setNavigationBar() {
        self.navigationController?.isNavigationBarHidden = false
        let standardAppearance = UINavigationBarAppearance()
        standardAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        standardAppearance.configureWithOpaqueBackground()
        standardAppearance.backgroundColor = UIColor.blue
        self.navigationController?.navigationBar.standardAppearance = standardAppearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = standardAppearance
    }
    
    @objc private func refreshView() {
        showLoader()
        viewModel.getNews()
    }
}

extension MostPopularVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.mostPopularNewsModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "mostPopularTableViewCell", for: indexPath) as? MostPopularTableViewCell else { return UITableViewCell() }
        cell.configureCell(model: viewModel.mostPopularNewsModel[indexPath.row])
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let newsVC = UIStoryboard(name: StringConstants.storyBoardName.main, bundle: nil).instantiateViewController(withIdentifier: "mostPopularNewsWebView") as? MostPopularNewsWebView else { return }
        newsVC.newsUrl = viewModel.mostPopularNewsModel[indexPath.row].url
        self.navigationController?.pushViewController(newsVC, animated: true)
    }
}


extension MostPopularVC: GetMostPopularNews {
    func didGetNews(isSuccess: Bool, message: String?) {
        // stop loader
        dismissLoader()
        refreshControl.endRefreshing()
        if !isSuccess {
            // error message
            showErrorMessage(message)
        }
        tableView.reloadData()
    }
}
