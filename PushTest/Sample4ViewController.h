//
//  MenuViewController.h
//  PushViewTestProject
//
//  Created by Tech Meet Meet on 13/04/23.
//  Copyright (c) 2013年 Tech Meet Meet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Sample4ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;


- (IBAction)back1Action:(id)sender;
- (IBAction)back2Action:(id)sender;
- (IBAction)back3Action:(id)sender;
- (IBAction)push5Action:(id)sender;
- (IBAction)switchDisplayAction:(id)sender;
- (IBAction)showWebViewAction:(id)sender;

@end
