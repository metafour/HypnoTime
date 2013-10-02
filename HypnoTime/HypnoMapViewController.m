//
//  HypnoMapViewController.m
//  HypnoTime
//
//  Created by Camron Schwoegler on 10/2/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "HypnoMapViewController.h"

@implementation HypnoMapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    
    if (self) {
        
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Map"];
        
        UIImage *image = [UIImage imageNamed:@"Map Icon"];
        [tbi setImage:image];
        
    }
    
    return self;
}
@end
