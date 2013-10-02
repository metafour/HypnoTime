//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Camron Schwoegler on 9/30/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        
        UIImage *tbImage = [UIImage imageNamed:@"Hypno.png"];
        
        [tbi setTitle:@"Hypnosis"];
        [tbi setImage:tbImage];
    }
    
    return self;
}

- (void)loadView
{
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *view = [[HypnosisView alloc] initWithFrame:frame];
    
    [self setTitle:@"HypnosisView"];
    [self setView:view];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"HypnosisViewController loaded its view");
}

@end
