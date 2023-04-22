//
//  movie.swift
//  CollectionView
//
//  Created by 孫凡欣 on 2023/04/19.
//

import UIKit

struct Movie {
    let title: String
    let image: UIImage
}

let movies: [Movie] = [
    Movie(title: "名探偵コナン 黒鉄の魚影", image: UIImage(named: "名探偵コナン 黒鉄の魚影")!),
   Movie(title: "ネメシス 黄金螺旋の謎", image: UIImage(named: "ネメシス 黄金螺旋の謎")!),
  Movie(title: "わたしの幸せな結婚", image: UIImage(named: "わたしの幸せな結婚")!),
   Movie(title: "シン・仮面ライダー", image: UIImage(named: "シン・仮面ライダー")!),
  Movie(title: "映画ドラえもん のび太と空の理想郷", image: UIImage(named: "映画ドラえもん のび太と空の理想郷")!),
  Movie(title: "THE FIRST SLAM DUNK", image: UIImage(named: "THE FIRST SLAM DUNK")!),
  Movie(title: "仕掛人・藤枝梅安 2", image: UIImage(named: "仕掛人・藤枝梅安 2")!),
  Movie(title: "すずめの戸締まり", image: UIImage(named: "すずめの戸締まり")!),
  Movie(title: "ロストケア", image: UIImage(named: "ロストケア")!),
  Movie(title: "シング・フォー・ミー、ライル", image: UIImage(named: "シング・フォー・ミー、ライル")!)


]
