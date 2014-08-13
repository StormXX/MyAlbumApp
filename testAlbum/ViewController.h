//
//  ViewController.h
//  testAlbum
//
//  Created by Gintama on 14-8-2.
//  Copyright (c) 2014年 Gintama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myCell.h"
#import <MWPhotoBrowser/MWPhotoBrowser.h>
@interface ViewController : UIViewController<UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,MWPhotoBrowserDelegate>

@property (strong,nonatomic) UICollectionView * cv;
@property(strong,nonatomic) NSMutableArray * photos;
@end
