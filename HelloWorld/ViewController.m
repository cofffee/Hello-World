//
//  ViewController.m
//  HelloWorld
//
//  Created by Remigio, Kevin (Contractor) on 9/7/17.
//  Copyright © 2017 Remigio, Kevin (Contractor). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
-(void) setup;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setup];

}

- (void) setup {
    self.view.backgroundColor = [UIColor grayColor];
    CGRect viewRect = CGRectMake(0, 300, self.view.frame.size.width, 200);
    _myView = [[UIView alloc] initWithFrame:viewRect];
    _myView.backgroundColor = [UIColor whiteColor];
    
    CGRect labelRect = CGRectMake(0, (viewRect.origin.y / 2) - 100, viewRect.size.width, 30);
    _myLabel = [[UILabel alloc] initWithFrame:labelRect];
    _myLabel.text = @"Hello, World";
    _myLabel.textColor = [UIColor blueColor];
    _myLabel.textAlignment = NSTextAlignmentCenter;
    UIFont *font = [UIFont fontWithName:@"Helvetica" size:20];
    [_myLabel setFont:font];
    
    
    [self.view addSubview:_myView];
    [_myView addSubview:_myLabel];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
