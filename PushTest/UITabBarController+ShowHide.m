//
//  UITabBarController+Extras.m
//  PushViewTestProject
//
//  Created by Tech Meet Meet on 13/04/24.
//  Copyright (c) 2013年 Tech Meet Meet. All rights reserved.
//

#import "UITabBarController+ShowHide.h"

@implementation UITabBarController (ShowHide)

- (void)showTabBar:(BOOL)show
{
    UITabBar* tabBar = self.tabBar;
    if (show != tabBar.hidden)
        return;
    // This relies on the fact that the content view is the first subview
    // in a UITabBarController's normal view, and so is fragile in the face
    // of updates to UIKit.
    UIView* subview = (self.view.subviews)[0];
    CGRect frame = subview.frame;
    if (show) {
        frame.size.height -= tabBar.frame.size.height;
    } else {
        frame.size.height += tabBar.frame.size.height;
    }
    subview.frame = frame;
    tabBar.hidden = !show;
}

// 
// http://stackoverflow.com/questions/3544701/show-tab-bar-after-its-hidden

@end
