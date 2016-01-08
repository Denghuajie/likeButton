//
//  DJButton.m
//  点赞动画
//
//  Created by Mr.Deng on 16/1/8.
//  Copyright © 2016年 Mr.Deng. All rights reserved.
//

#import "DJButton.h"
#define kDurationTime 0.5
@implementation DJButton

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setImage:[UIImage imageNamed:@"Like"] forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:@"Like-Blue"] forState:UIControlStateSelected];
    }
    return self;
}

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    if (selected) {
        [self popOutsideWithTime:kDurationTime];
    }
    else
    {
        [self popInsideWithTime:kDurationTime];
    }
    
}

- (void)popInsideWithTime:(NSTimeInterval)duration
{
    __weak typeof(self)weakSelf = self;
    [UIView animateKeyframesWithDuration:duration delay:0 options:0 animations:^{
        weakSelf.transform = CGAffineTransformIdentity;
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:1/2.0 animations:^{
            weakSelf.transform = CGAffineTransformMakeScale(0.8, 0.8);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:1/2.0 relativeDuration:1/2.0 animations:^{
            weakSelf.transform = CGAffineTransformMakeScale(1.0, 1.0);
        }];

    } completion:nil];
    }

- (void)popOutsideWithTime:(NSTimeInterval)duration
{
    __weak typeof(self)weakSelf = self;
    [UIView animateKeyframesWithDuration:duration delay:0 options:0 animations:^{
        weakSelf.transform = CGAffineTransformIdentity;
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:1/3.0 animations:^{
            weakSelf.transform = CGAffineTransformMakeScale(1.5, 1.5);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:1/3.0 relativeDuration:1/3.0 animations:^{
            weakSelf.transform = CGAffineTransformMakeScale(0.8, 0.8);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:2/3.0 relativeDuration:1/3.0 animations:^{
            weakSelf.transform = CGAffineTransformMakeScale(1.0, 1.0);
        }];

    } completion:nil];

}


@end
