//
//  NewEventViewController.h
//  Rend
//
//  Created by Katerina Zorko on 1/30/15.
//  Copyright (c) 2015 KaterinaZorko. All rights reserved.
//

#ifndef Rend_NewEventViewController_h
#define Rend_NewEventViewController_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <ParseUI/ParseUI.h>
#import <Parse/Parse.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "Group.h"


@interface NewEventViewController : UIViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate, CLLocationManagerDelegate>
{
 //   CLLocationManager *locationManager;
    Group *friendsGroup;
    
}
@property (nonatomic, strong) UIButton *chooseButton;


    - (IBAction)chooseFriends:(id)sender;

    - (IBAction)shareLocation:(id)sender;
@end






#endif

