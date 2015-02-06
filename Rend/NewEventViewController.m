//
//  NewEventViewController.m
//  Rend
//
//  Created by Katerina Zorko on 1/30/15.
//  Copyright (c) 2015 KaterinaZorko. All rights reserved.
//

#import "NewEventViewController.h"


@interface NewEventViewController ()

@end

@implementation NewEventViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self setTitle:NSLocalizedString(@"Parse Push Notifications", @"Parse Push Notifications")];
    
   // [self loadInstallData];
}

- (IBAction)shareLocation:(id)sender {
    NSLog(@"Hello");
    PFQuery *query = [PFInstallation query];
    [query whereKey:@"channels" equalTo:@"global"];
    
    [query whereKey:@"deviceType" equalTo:@"ios"];
    PFPush *iOSPush = [[PFPush alloc] init];
    [iOSPush setMessage:@"Your suitcase has been filled with tiny apples!"];
   //[iOSPush setChannel:@"global"];
    [iOSPush setQuery:query];
    [iOSPush sendPushInBackground];
    
   // [PFPush sendPushMessageToChannelInBackground:@"global" withMessage:@"Hello World!"];
    
   /* PFPush *push = [[PFPush alloc] init];
    [push setChannel:@"global"];
    [push setMessage:@"The Giants just scored!"];
    [push sendPushInBackground];*/
}
@end