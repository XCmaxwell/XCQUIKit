//
//  UIButton+ImagePostion.m
//  XCTOOLKit
//
//  Created by Mac on 2022/5/4.
//

#import "UIButton+ImagePostion.h"

@implementation UIButton (ImagePostion)

- (void)adajustImagePostion:(XCButtonImagePostion)type margin:(CGFloat)margin {
    
    CGFloat imageWith = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    CGFloat titleWidth = self.titleLabel.frame.size.width;
    CGFloat  titleHeight = self.titleLabel.frame.size.height;
    
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
    switch (type) {
        case XCButtonImagePostionTop:
        {
            imageEdgeInsets = UIEdgeInsetsMake(-titleHeight-margin, 0, 0, -titleWidth);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-margin, 0);
        }
            break;
        case XCButtonImagePostionDown:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -titleHeight-margin, -titleWidth);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-margin, -imageWith, 0, 0);
        }
            break;
        case XCButtonImagePostionLeft:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, -margin/2.0, 0, margin/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, margin/2.0, 0, -margin/2.0);
        }
            break;
        case XCButtonImagePostionRight:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, titleWidth+margin/2.0, 0, -titleWidth-margin/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-margin/2.0, 0, imageWith+margin/2.0);
        }
            break;
        default:
            break;
    }
    self.titleEdgeInsets = labelEdgeInsets;
    self.imageEdgeInsets = imageEdgeInsets;
}



@end
