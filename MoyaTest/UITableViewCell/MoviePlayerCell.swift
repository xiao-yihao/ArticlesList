//
//  MoviePlayerCell.swift
//  MoyaTest
//
//  Created by 肖 怡豪 on 2019/10/08.
//  Copyright © 2019 肖 怡豪. All rights reserved.
//

import UIKit
import AVKit

class MoviePlayerCell: UITableViewCell {
    var playerView: PlayerView!
    var thumbnailImageView: UIImageView!
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        selectionStyle = .none
        backgroundColor = .clear
        
        playerView = PlayerView()
        thumbnailImageView = UIImageView()
        addSubviews()
        configureSubviews()
        addConstraints()
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: playerView.player?.currentItem, queue: nil) { [weak self] (_) in
            self?.playerView.player?.seek(to: CMTime.zero)
            self?.playerView.player?.play()
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func set(cellData: CellData) {

        thumbnailImageView.image = UIImage(url: cellData.thumbnail)

        if playerView.playerLayer.player == nil {
            let url = NSURL(string: cellData.movieUrl);
            let avPlayer = AVPlayer(url: url! as URL);
            playerView.playerLayer.player = avPlayer;
        }
        thumbnailImageView.isHidden = true
        playerView.player?.play();
        
    }

    func addSubviews() {
        contentView.addSubview(playerView)
        contentView.addSubview(thumbnailImageView)
    }

    func configureSubviews() {
    }

    func addConstraints() {
        playerView.translatesAutoresizingMaskIntoConstraints = false
        thumbnailImageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            playerView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 15 * 2),
            playerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            playerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            playerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            playerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            thumbnailImageView.topAnchor.constraint(equalTo: playerView.topAnchor),
            thumbnailImageView.leadingAnchor.constraint(equalTo: playerView.leadingAnchor),
            thumbnailImageView.trailingAnchor.constraint(equalTo: playerView.trailingAnchor),
            thumbnailImageView.bottomAnchor.constraint(equalTo: playerView.bottomAnchor)
        ])
    }
}

