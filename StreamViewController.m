//
//  StreamViewController.m
//  
//
//  Created by Halston van der Sluys on 6/24/15.
//
//

#import "StreamViewController.h"
#import "Parse/Parse.h"

@interface StreamViewController ()

@end

@implementation StreamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   // _webView.delegate = self;
    
    
  //;
          // Do something with the returned PFObject in the gameScore variable.
    
        //NSString *URLString = [myURL objectForKey:@"LiveFeed"] ;
        
        //past he

    _webView.delegate = self;
    NSString *myURLString = @"https://www.thecube.com/cube/juan-diego-catholic-high-school-draper-utah";
    
    //Create a URL object.
    NSURL *url = [NSURL URLWithString:myURLString];
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    //Load the request in the UIWebView.
    [_webView loadRequest:requestObj];
    


    // Not necessary to do anything here.
    _activityIndicator.startAnimating;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"Loaded Sucessfully!");
    _activityIndicator.stopAnimating;
    _activityIndicator.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//

@end
