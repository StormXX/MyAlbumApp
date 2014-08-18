//
//  HeadPic.m
//  testAlbum
//
//  Created by Gintama on 14-8-14.
//  Copyright (c) 2014年 Gintama. All rights reserved.
//

#import "HeadPic.h"

@interface HeadPic ()

@end

@implementation HeadPic
@synthesize picList;
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
    picList=[[NSMutableArray alloc] init];
    [picList addObject:[UIImage imageNamed:@"11.png"]];
    [picList addObject:[UIImage imageNamed:@"11.png"]];
    [picList addObject:[UIImage imageNamed:@"11.png"]];
    [picList addObject:[UIImage imageNamed:@"11.png"]];
    [picList addObject:[UIImage imageNamed:@"11.png"]];
    [picList addObject:[UIImage imageNamed:@"11.png"]];
    [picList addObject:[UIImage imageNamed:@"11.png"]];
    [picList addObject:[UIImage imageNamed:@"11.png"]];
    [picList addObject:[UIImage imageNamed:@"11.png"]];
    
    CGSize picSize={106.6,152};
    int i=0;
    for (i =0 ; i<[picList count]; i++) {
        CGRect btnFrame={(picSize.width) * (i%3),(picSize.height) * (i/3)+64,picSize.width,picSize.height};
        UIButton * button=[[UIButton alloc] initWithFrame:btnFrame];
        button.tag=100+i;
        [button setBackgroundImage:[picList objectAtIndex:i] forState:UIControlStateNormal];
        [self.view addSubview:button];
    }
                        
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
