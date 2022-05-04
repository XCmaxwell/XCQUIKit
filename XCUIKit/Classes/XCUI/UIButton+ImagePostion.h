//
//  UIButton+ImagePostion.h
//  XCTOOLKit
//
//  Created by Mac on 2022/5/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, XCButtonImagePostion) {
    XCButtonImagePostionTop,
    XCButtonImagePostionDown,
    XCButtonImagePostionLeft,
    XCButtonImagePostionRight,
};

@interface UIButton (ImagePostion)

/// 设置按钮图片位于文字的上下左右位置，设置前需要确定按钮的frame, 设置按钮好图片
/// @param type 图片位置类型
/// @param margin 图片和文字的间隔
- (void)adajustImagePostion:(XCButtonImagePostion)type margin:(CGFloat)margin;

@end

NS_ASSUME_NONNULL_END
