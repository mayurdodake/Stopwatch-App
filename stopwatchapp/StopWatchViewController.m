//
//  StopWatchViewController.m
//  stopwatchapp
//
//  Created by Felix-ITS 006 on 08/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "StopWatchViewController.h"

@interface StopWatchViewController ()

@end

@implementation StopWatchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    _lbl1.text=@"00:00:00";
    
    runningstate = false;
    
    
    
    
}
-(void)updateTimer
{
   
    if(runningstate==false)
    {
            return;
    }
    
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
 
    NSTimeInterval elapsed = currentTime - startWatch;
    
    int hrs =(int) (elapsed/3600);
    int min =(int) (elapsed/60);
    int sec =(int) (elapsed);
    
    _lbl1.text=[NSString stringWithFormat:@"%u:%u:%u",hrs,min,sec];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)start:(id)sender {
    
    
    if(runningstate==false)
    {
        [sender setTitle:@"STOP" forState:UIControlStateNormal];
        
        runningstate=true;
        
        startWatch = [NSDate timeIntervalSinceReferenceDate];
        
        
        _timer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        
    }
    else
    {
        [sender setTitle:@"START" forState:UIControlStateNormal];
        runningstate=false;
    }
}

- (IBAction)reset:(id)sender {
    _lbl1.text=@"00:00:00";
    runningstate=false;
}
@end
