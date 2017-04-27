
//
//  TanButton.m
//  test0407
//
//  Created by 爱车保 on 2017/4/11.
//  Copyright © 2017年 成都爱车保信息技术有限公司. All rights reserved.
//

#import "TanButton.h"

@implementation TanButton

-(instancetype)init{
    
    self=[super init];
    
    if (self) {
        
        _originX = self.frame.origin.x;
        
        _originY = self.frame.origin.y;
        
        self.layer.cornerRadius=5.0;
        
        //        [self setImage:[UIImage imageNamed:@"赞"] forState:UIControlStateNormal];
        
    }   
    
    return self;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    if (p.x > _originX && p.x < self.frame.size.width + _originX && p.y > _originY && p.y < self.frame.size.height + _originY) {
        [UIView animateWithDuration:0.3 animations:^{
            [self setTransform:CGAffineTransformMakeScale(1.2, 1.2)];
        }];
    }
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    if (p.x > _originX && p.x < self.frame.size.width + _originX && p.y > _originY && p.y < self.frame.size.height + _originY) {
    [UIView animateWithDuration:1.2 delay:0.2 usingSpringWithDamping:0.5 initialSpringVelocity:100 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [self setTransform:CGAffineTransformIdentity];
    } completion:^(BOOL finished) {
        
    }];
    }
    
}




@end
