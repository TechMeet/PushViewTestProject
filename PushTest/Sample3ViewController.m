//
//  Sample3ViewController.m
//  PushViewTestProject
//
//  Created by Tech Meet Meet on 13/04/23.
//  Copyright (c) 2013年 Tech Meet Meet. All rights reserved.
//

#import "Sample3ViewController.h"

@interface Sample3ViewController ()

@end

@implementation Sample3ViewController

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
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //[segue.destinationViewController setHidesBottomBarWhenPushed:YES];
}

@end
