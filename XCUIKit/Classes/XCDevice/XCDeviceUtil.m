//
//  XCDeviceUtil.m
//  XCUIKit
//
//  Created by Mac on 2022/6/30.
//

#import "XCDeviceUtil.h"

@implementation XCDeviceUtil

+ (BOOL)isProtraitLockOn {
    
    
    UIApplication *app = [UIApplication sharedApplication];
    BOOL isOn = false;
    if (@available(iOS 13.0, *)) {
        
        
    } else {
        UIView *foregroundView = [[app valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];
        for (id child in foregroundView.subviews) {
            @try {
                id item = [child valueForKey:@"item"];
                int type = [[item valueForKey:@"type"] intValue];
                /*
                 UIStatusBarItem.type
                 0, 时间
                 3, 信号强度
                 4, 运营商
                 6, 网络
                 8, 电池
                 9, 电量百分比
                 12, 蓝牙
                 14, 闹钟
                 18, 竖屏锁定
                 34, 耳机
                 */
                if (type == 18) {
                    isOn = YES;
                    break;
                }
            }@catch (NSException *e) {
                
            }
        }
    }
    return isOn;
}

@end
