//
//  OnlineGradesViewController.m
//  
//
//  Created by Halston van der Sluys on 7/2/15.
//
//
#import "OnlineGradesViewController.h"
@interface OnlineGradesViewController()

@end

@implementation OnlineGradesViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.gradesWebView.delegate = self;
    
    NSString *urlAddress = @"https://powerschool.slvcatholic.org/public/";
    //Create a URL object.a
    NSURL *url = [NSURL URLWithString:urlAddress];
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    //Load the request in the UIWebView.
    [_gradesWebView loadRequest:requestObj];
    _activityIndicator.startAnimating;
    
    //Tracking How many users use the Online Grades Option
    
    
    
}

- (void)webViewDidFinishLoad:(UIWebView *)gradesWebView {
    
    NSLog(@"View completed loading");
    // Auto fill the username and password text fields, assuming the HTML has
    // <input type="text" name="username"> and
    // <input type="text" name="password">
    NSString *savedUsername = [[NSUserDefaults standardUserDefaults] objectForKey:@"USERNAME"];
    NSString *savedPassword = [[NSUserDefaults standardUserDefaults] objectForKey:@"PASSWORD"];
    
    
    //pass the login Credintails into textfield of WebView.
    
    //str_Username_req
    //str_Password_req
    
    if (savedUsername.length != 0 && savedPassword.length != 0) {
        // Create js strings
        NSString *loadUsernameJS = [NSString stringWithFormat:@"var inputFields = document.querySelectorAll(\"input[name='str_Username_req']\"); \
                                    for (var i = inputFields.length >>> 0; i--;) { inputFields[i].value = '%@';}", savedUsername];
        NSString *loadPasswordJS = [NSString stringWithFormat:@"var inputFields = document.querySelectorAll(\"input[name='str_Password_req']\"); \
                                    for (var i = inputFields.length >>> 0; i--;) { inputFields[i].value = '%@';}", savedPassword];
        
        //not working
        NSString *performSubmitJS = @"var passFields = document.querySelectorAll(\"input[type='3']\"); \
        passFields[0].click()";
        
        // Runs the JS
        [self.gradesWebView stringByEvaluatingJavaScriptFromString: loadUsernameJS];
        [self.gradesWebView stringByEvaluatingJavaScriptFromString: loadPasswordJS];
        
        //not working
        [self.gradesWebView stringByEvaluatingJavaScriptFromString: performSubmitJS];
    }
    
    NSLog(@"Loaded Sucessfully!");
    _activityIndicator.stopAnimating;
    _activityIndicator.hidden = YES;
    
}



- (void)webViewDidStartLoad:(UIWebView *)webView {
    // Not necessary to do anything here.
    NSLog(@"Started Loading");
    _activityIndicator.startAnimating;
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
