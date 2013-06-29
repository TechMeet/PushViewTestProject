//
//  BaseWebViewController.h
//  PushViewTestProject
//
//  Created by 今井 真尚 on 2013/04/24.
//  Copyright (c) 2013年 Tech Meet Meet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseWebViewController : UIViewController
<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (copy, nonatomic) NSString* url;

- (void)showWebView;
- (void)invokeNativeMethod:(NSURLRequest *)request;
- (void)configueLeftButtonAppearance;
- (void)setHistoryBackButton;


@end
