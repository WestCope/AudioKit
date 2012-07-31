//
//  PlayCSDFileController.m
//  Objective-Csound Example
//
//  Created by Aurelius Prochazka on 6/1/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//

#import "PlayCSDFileController.h"
#import "OCSManager.h"

@implementation PlayCSDFileController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = NSLocalizedString(@"Play a CSD File", @"Play a CSD File");
    rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Stop"
                                                   style:UIBarButtonSystemItemDone
                                                  target:self
                                                  action:@selector(startOrStop)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    [[OCSManager sharedOCSManager] runCSDFile:@"example"];
    
}

- (IBAction)startOrStop {
    if ([[OCSManager sharedOCSManager] isRunning]) {
        [[OCSManager sharedOCSManager] stop];
        rightButton.title = @"Run";
    } else {
        [[OCSManager sharedOCSManager] runCSDFile:@"example"];
        rightButton.title = @"Stop";
    }
}

@end
