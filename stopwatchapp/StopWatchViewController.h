//
//  StopWatchViewController.h
//  stopwatchapp
//
//  Created by Felix-ITS 006 on 08/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StopWatchViewController : UIViewController

{
    BOOL runningstate;
    NSTimeInterval startWatch;
}

@property (strong, nonatomic) IBOutlet UILabel *lbl1;



@property (strong, nonatomic) IBOutlet UIButton *button1;


@property (strong, nonatomic) IBOutlet UIButton *button2;

@property(nonatomic,retain)NSTimer *timer;


- (IBAction)start:(id)sender;

- (IBAction)reset:(id)sender;

@end
