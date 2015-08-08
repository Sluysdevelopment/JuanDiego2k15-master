//
//  HomepageViewController.m
//  
//
//  Created by Halston van der Sluys on 7/2/15.
//
//

#import "HomepageViewController.h"

@interface HomepageViewController ()

@end

@implementation HomepageViewController


- (void)viewDidLoad
{
    
    //self.CTVWebView.delegate = self;
    _webView.delegate = self;
    
    
    NSString *urlAddress = @"http://www.jdchs.org";
    //Create a URL object.
    NSURL *url = [NSURL URLWithString:urlAddress];
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    //Load the request in the UIWebView.
    [_webView loadRequest:requestObj];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    // Not necessary to do anything here.
    _activityIndicator.startAnimating;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"Loaded Sucessfully!");
    _activityIndicator.stopAnimating;
    _activityIndicator.hidden = YES;
}


//

@end
