//
//  ArticleService.swift
//  MoyaTest
//
//  Created by 肖 怡豪 on 2019/10/09.
//  Copyright © 2019 肖 怡豪. All rights reserved.
//

import Foundation
import Moya
import RxMoya
import RxSwift
import SwiftyJSON

class ArticleService {
    let articleProvider = MoyaProvider<ArticleProvider>()
    
    func articlesList(completion: @escaping (ResultEntity?, Error?) -> ()) {
        let _ = articleProvider.rx.request(.articles).subscribe { event in
            switch event {
            case .success(let response):
                let data = response.data
                let resultEntity = try? JSONDecoder().decode(ResultEntity.self, from: data)
                return completion(resultEntity, nil)
            case .error(let error):
                completion(nil, error)
            }
        }
    }
}
