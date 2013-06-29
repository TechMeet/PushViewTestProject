//
//  WebViewController.m
//  PushViewTestProject
//
//  Created by Tech Meet Meet on 13/04/24.
//  Copyright (c) 2013年 Tech Meet Meet. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

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
    NSString *path = [[NSBundle mainBundle] pathForResource: @"web4" ofType: @"html"];
    [self.webView loadRequest: [NSURLRequest requestWithURL: [NSURL fileURLWithPath: path]]];
}


- (void)configueLeftButtonAppearance
{
    if (self.webView.canGoBack) {
        [self setHistoryBackButton];
    } else {
        [self setNativeBackButton];
    }
}


- (void)setNativeBackButton
{
	// 戻るボタン
    UIBarButtonItem *backBarButtonItem = [[UIBarButtonItem alloc]
										  initWithTitle:@"戻る"
										  style:UIBarButtonItemStylePlain
										  target:self
										  action:@selector(backNativeButtonItemAction:)];
    self.navigationItem.leftBarButtonItem = backBarButtonItem;
}

- (IBAction)backNativeButtonItemAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

// Native処理を呼び出す
-(void)invokeNativeMethod:(NSURLRequest *)request
{
    // native://showSample4が指定された場合
    if ([request.URL.host isEqualToString:@"showSample4"]) {
        
        // push4FromWeb1
        [self performSegueWithIdentifier:@"push4FromWeb2" sender:self];
        
    }
}


@end
