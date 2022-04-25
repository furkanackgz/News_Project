//
//  NewsViewModel.swift
//  News
//
//  Created by Furkan Açıkgöz on 24.04.2022.
//

import Foundation

struct NewsTableViewModel {
    let newsArray: [News]
    
    func numberOfRowsInSection() -> Int {
        return self.newsArray.count
    }
    
    func newsAtIndexPath(index: Int) -> NewsViewModel {
        let news = self.newsArray[index]
        return NewsViewModel(news: news)
    }
}

struct NewsViewModel {
    let news: News
    
    var title: String {
        return news.title
    }
    
    var story: String {
        return news.story
    }
}
