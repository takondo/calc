//
//  CustomButton.m
//  Calc
//
//  Created by 0A3009 on 2016/03/07.
//  Copyright © 2016年 0A3009. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

- (void)drawRect:(CGRect)rect
{
    self.layer.borderColor = self.borderColor.CGColor;
    self.layer.borderWidth = self.borderWidth;
    self.layer.cornerRadius = self.borderRadius;
    
    [super drawRect:rect];
}

- (void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    
    if(highlighted){
        self.layer.backgroundColor = self.backgroundColorHighlited.CGColor;
    }else{
        self.layer.backgroundColor = self.backgroundColorNormal.CGColor;
    }
}

@end
