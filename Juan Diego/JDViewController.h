//
//  JDTV.h
//  Juan Diego
//
//  Created by Halston van der Sluys on 8/2/15.
//  Copyright (c) 2015 Halston van der Sluys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JDViewController : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *TVWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
