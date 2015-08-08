//
//  calendarViewController.h
//  
//
//  Created by Halston van der Sluys on 8/3/15.
//
//

#import <UIKit/UIKit.h>

@interface calendarViewController : UIViewController<UIWebViewDelegate>{
    
}
@property (weak, nonatomic) IBOutlet UIWebView *CalenderWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
