//
//  Array+.swift
//  MoyaTest
//
//  Created by 肖 怡豪 on 2019/10/08.
//  Copyright © 2019 肖 怡豪. All rights reserved.
//

import Foundation

extension Array {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

/*
 採用ご担当者様
 　
 お世話になっております。
 肖怡豪でございます。

 今回は面接の機会をいただき、ありがとうございます。

 ■カジュアル面談希望日程

 大変申し訳ないのですが、現職の業務の都合上、
 平日19:30以降で調整いただくことは可能でしょうか。

 もうよろしければ、下記の時間でお伺いすることが可能ですので、
 ご調整頂けますと幸いです。

 10月15日（火）19:30以降
 10月16日（水）19:30以降
 10月17日（木）19:30以降
 10月18日（金）19:30以降
 　
 ■Emailアドレス開示のお願い
 shouigou@gmail.com
 　
 ■履歴書（写真なしOK）と経歴書
 添付ファイルとしてお送りいたします。

 お手数をおかけいたしますが、何卒よろしくお願いいたします。
 */
