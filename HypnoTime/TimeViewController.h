//
//  TimeViewController.h
//  HypnoTime
//
//  Created by Camron Schwoegler on 9/30/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeViewController : UIViewController
{
    __weak IBOutlet UILabel *timeLabel;
}

-(IBAction)showCurrentTime:(id)sender;

@end
