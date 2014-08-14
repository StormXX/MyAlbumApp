//
//  ViewController.m
//  testAlbum
//
//  Created by Gintama on 14-8-2.
//  Copyright (c) 2014年 Gintama. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize photos;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.photos=[[NSMutableArray alloc] init];
    [photos addObject:[MWPhoto photoWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"2pic" ofType:@"jpg"]]]];
    [photos addObject:[MWPhoto photoWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"2pic" ofType:@"jpg"]]]];
    [photos addObject:[MWPhoto photoWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"2pic" ofType:@"jpg"]]]];
    [photos addObject:[MWPhoto photoWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"1pic" ofType:@"jpg"]]]];
    [photos addObject:[MWPhoto photoWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"2pic" ofType:@"jpg"]]]];
    [photos addObject:[MWPhoto photoWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"1pic" ofType:@"jpg"]]]];
    [photos addObject:[MWPhoto photoWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"1pic" ofType:@"jpg"]]]];
    
    //设置布局
    UICollectionViewFlowLayout *flowLayout=[[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    [flowLayout setMinimumInteritemSpacing:0];
    [flowLayout setMinimumLineSpacing:20];
    //初始化cv
    CGRect bounds=self.view.bounds;
    _cv=[[UICollectionView alloc] initWithFrame:CGRectMake(bounds.origin.x, bounds.origin.y+20, bounds.size.width, bounds.size.height-40) collectionViewLayout:flowLayout];
    [_cv setBackgroundColor:[UIColor clearColor]];
    //注册cell
    [_cv registerClass:[myCell class] forCellWithReuseIdentifier:@"cell"];
    //添加delegate
    _cv.delegate=self;
    _cv.dataSource=self;
    [self.view addSubview:_cv];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - collectionView delegate
//设置分区
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}

//每个分区上的元素个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 9;
}

//设置元素内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"cell";
    myCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identify forIndexPath:indexPath];
    //[cell sizeToFit];
    cell.backgroundColor=[UIColor redColor];
    UIImage *mypic=[UIImage imageNamed:@"2pic.jpg"];
    cell.image.image=mypic;
    return cell;
}

//cell的布局
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    UIEdgeInsets top = {2,2,2,2};
    return top;
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake(103,183);
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 3;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 3;
}

//点击cell的动作
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    MWPhotoBrowser *browser=[[MWPhotoBrowser alloc] initWithDelegate:self];
    
    browser.displayActionButton=YES;
    browser.displayNavArrows=YES;
    browser.displaySelectionButtons=YES;
    browser.zoomPhotosToFill=YES;
    browser.alwaysShowControls=YES;
    browser.enableGrid=YES;
    browser.startOnGrid=NO;
    browser.wantsFullScreenLayout=YES;
    
    [browser setCurrentPhotoIndex:1];
    [browser showNextPhotoAnimated:YES];
    [browser showPreviousPhotoAnimated:YES];
    [self.navigationController pushViewController:browser animated:YES];
}

- (NSUInteger)numberOfPhotosInPhotoBrowser:(MWPhotoBrowser *)photoBrowser {
    return photos.count;
}

- (id <MWPhoto>)photoBrowser:(MWPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index {
    if (index < photos.count)
        return [self.photos objectAtIndex:index];
    return nil;
}
@end
