//
//  CustomButton.h
//  Calc
//
//  Created by 0A3009 on 2016/03/07.
//  Copyright © 2016年 0A3009. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface CustomButton : UIButton

@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable CGFloat borderRadius;

@property (nonatomic) IBInspectable UIColor *backgroundColorNormal;
@property (nonatomic) IBInspectable UIColor *backgroundColorHighlited;

@end
