//
//  myCell.m
//  testAlbum
//
//  Created by Gintama on 14-8-2.
//  Copyright (c) 2014年 Gintama. All rights reserved.
//

#import "myCell.h"

@implementation myCell
@synthesize image;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGSize cellsize=self.frame.size;
        image=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, cellsize.width,cellsize.height)];
        [self addSubview:image];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
