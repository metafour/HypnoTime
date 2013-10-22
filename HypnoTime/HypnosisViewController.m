//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Camron Schwoegler on 9/30/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "HypnosisViewController.h"

@implementation HypnosisViewController

@synthesize view, colorControl;

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
    view = [[HypnosisView alloc] initWithFrame:frame];
    
    // Set controller title
//    [self setTitle:@"HypnosisView"];
    
    // Segmented Control
    NSArray *colors = [[NSArray alloc] initWithObjects:@"Red", @"Green", @"Blue", nil];
    colorControl = [[UISegmentedControl alloc] initWithItems:colors];
    
    UIImage *bgImage = [UIImage imageNamed:@"White Pixel"];
    
    [colorControl setBackgroundImage:[bgImage resizableImageWithCapInsets:UIEdgeInsetsZero] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
//    [colorControl setTintColor:[UIColor whiteColor]];
//    [colorControl setBackgroundColor:[UIColor blackColor]];
    
     
    CGRect rect = CGRectMake(((frame.size.width - 200)) / 2, (frame.size.height) - (frame.size.height / 6), 200, 25);
    [colorControl setFrame:rect];
    
    // Register changeColor to be called when a segment is tapped (target-action)
    [colorControl addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventValueChanged];
    
    [colorControl setSelectedSegmentIndex:0];
    
    [view addSubview:colorControl];
    
    [self setView:view];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"HypnosisViewController loaded its view");
}

- (void)changeColor
{
    NSArray *colors = [[NSArray alloc] initWithObjects:[UIColor redColor], [UIColor greenColor], [UIColor blueColor], nil];
    
    [view setCircleColor:[colors objectAtIndex:[colorControl selectedSegmentIndex]]];
}
@end
