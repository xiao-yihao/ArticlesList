//
//  UIImage+.swift
//  MoyaTest
//
//  Created by 肖 怡豪 on 2019/10/08.
//  Copyright © 2019 肖 怡豪. All rights reserved.
//

struct ResultEntity: Codable {
    let result: Bool
    let data: [Item]
}

struct Item: Codable {
    let type: String
    let article: Article

}

struct Article: Codable {
    let id: String
    let title: String
    let icon: String?
    var is_ads: Bool?
    var movie_cook_name: String?
    var screen_name: String?
    var movie_url: String?
    var m3u8_movie_url: String?
    var square_icon: String?
    var description: String?
    var is_serialize: Bool?
    var category_name: String?
    var category_color: String?
 
}


