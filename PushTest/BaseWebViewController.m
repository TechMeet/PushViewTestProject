//
//  BaseWebViewController.m
//  PushViewTestProject
//
//  Created by 今井 真尚 on 2013/04/24.
//  Copyright (c) 2013年 Tech Meet Meet. All rights reserved.
//

#import "BaseWebViewController.h"

@interface BaseWebViewController ()

@end

@implementation BaseWebViewController

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
    [self configueLeftButtonAppearance];
    [self showWebView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showWebView
{
    // サブクラスで実装すること
}


// Native処理を呼び出す
- (void)invokeNativeMethod:(NSURLRequest *)request
{
    // サブクラスで実装すること

}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}

- (IBAction)backBarButtonItemAction:(id)sender
{
    if (self.webView.canGoBack) {
        [self.webView goBack];
    }
}


- (void)setHistoryBackButton
{
	// 戻るボタン
    UIBarButtonItem *backBarButtonItem = [[UIBarButtonItem alloc]
										  initWithTitle:@"戻る"
										  style:UIBarButtonItemStylePlain
										  target:self
										  action:@selector(backBarButtonItemAction:)];
    self.navigationItem.leftBarButtonItem = backBarButtonItem;
}

- (void)configueLeftButtonAppearance
{
   // サブクラスで実装してください。
}

#pragma mark - WebViewDelegate

// ページ読込開始時にインジケータをくるくるさせる
- (void)webViewDidStartLoad:(UIWebView*)webView
{
    NSLog(@"webViewDidStartLoad:");
}

// ページ読込完了時にインジケータを非表示にする
- (void)webViewDidFinishLoad:(UIWebView*)webView
{
    NSLog(@"webViewDidFinishLoad:");
    [self configueLeftButtonAppearance];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"webView:didFailLoadWithError:");
}


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    // schemeがnativeの場合は、処理をフックしてNative処理を呼び出す
    if ([ request.URL.scheme isEqualToString:@"native" ]) {
        // フック処理
        [ self invokeNativeMethod:request];
        
        // WebViewの読み込みは中断する。
        return NO;
        
        // 通常のschemeの場合は、フックせずそのまま処理を続ける
    } else {
        return YES;
    }
    
}


@end
