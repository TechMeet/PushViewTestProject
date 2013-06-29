//
//  MenuViewController.m
//  PushViewTestProject
//
//  Created by Tech Meet Meet on 13/04/23.
//  Copyright (c) 2013年 Tech Meet Meet. All rights reserved.
//

#import "Sample4ViewController.h"
#import "UITabBarController+ShowHide.h"

@interface Sample4ViewController ()
{
    BOOL flag;
}

@end

@implementation Sample4ViewController

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
    //self.tabBarController.tabBar.hidden=YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back1Action:(id)sender
{
    // 先頭に戻る
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)back2Action:(id)sender
{
    int count = [self.navigationController.viewControllers count];
    NSLog(@"count:%d",count);
    // ２番目の画面に戻る
    [self.navigationController popToViewController:(self.navigationController.viewControllers)[1] animated:YES];
}

- (IBAction)back3Action:(id)sender
{
    int count = [self.navigationController.viewControllers count];
    NSLog(@"count:%d",count);
    // ３番目の画面に戻る
    [self.navigationController popToViewController:(self.navigationController.viewControllers)[2] animated:YES];
}

- (IBAction)push5Action:(id)sender
{
    [self performSegueWithIdentifier:@"push5" sender:self];
}

- (IBAction)switchDisplayAction:(id)sender
{
    if (!flag) {
        _messageLabel.text = @"メッセージ１を表示";
    } else {
        _messageLabel.text = @"メッセージ２を表示";    
    }
    flag =! flag;
    
}

- (IBAction)showWebViewAction:(id)sender
{
    [self performSegueWithIdentifier:@"pushWeb2FromNative" sender:self];
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //[self setHidesBottomBarWhenPushed:NO];
    
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tabBarController showTabBar:NO];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tabBarController showTabBar:YES];
}

@end
