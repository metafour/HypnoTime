//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Camron Schwoegler on 9/30/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        
        UIImage *tbImage = [UIImage imageNamed:@"Time.png"];
        
        [tbi setTitle:@"Time"];
        [tbi setImage:tbImage];
    }
    
    return self;
}

-(IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    
    [timeLabel setText:[dateFormatter stringFromDate:now]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [timeLabel setTextColor:[UIColor grayColor]];
    [[self view] setBackgroundColor:[UIColor blackColor]];
    
    NSLog(@"TimeViewController loaded its view");
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self showCurrentTime:nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

@end
