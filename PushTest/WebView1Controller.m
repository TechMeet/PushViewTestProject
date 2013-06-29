//
//  WebView1Controller.m
//  PushViewTestProject
//
//  Created by Tech Meet Meet on 2013/06/29.
//  Copyright (c) 2013年 Tech Meet Meet. All rights reserved.
//

#import "WebView1Controller.h"

@interface WebView1Controller ()

@end

@implementation WebView1Controller

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)showWebView
{
    NSString *path = [[NSBundle mainBundle] pathForResource: @"web1" ofType: @"html"];
    [self.webView loadRequest: [NSURLRequest requestWithURL: [NSURL fileURLWithPath: path]]];
}

- (void)configueLeftButtonAppearance
{
    if (self.webView.canGoBack) {
        [self setHistoryBackButton];
    } else {
        self.navigationItem.leftBarButtonItem = nil;
    }
}

// Native処理を呼び出す
-(void)invokeNativeMethod:(NSURLRequest *)request
{
    // native://showSample4が指定された場合
    if ([request.URL.host isEqualToString:@"showSample4"]) {
        
        // push4FromWeb1
        [self performSegueWithIdentifier:@"push4FromWeb1" sender:self];
        
    }
}

@end
