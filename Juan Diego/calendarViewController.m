//
//  calendarViewController.m
//  
//
//  Created by Halston van der Sluys on 8/3/15.
//
//

#import "calendarViewController.h"

@implementation calendarViewController{
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.CalenderWebView.delegate = self;
    
    NSString *urlAddress = @"http://www.jdchs.org/index.php/en/parents/calendar";
    //Create a URL object.
    NSURL *url = [NSURL URLWithString:urlAddress];
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    //Load the request in the UIWebView.
    [_CalenderWebView loadRequest:requestObj];
    //Tracking Analytics for How many people access the Flex View
    
}
//Something to dop with making sure popups work
-(BOOL)EventsWebView:(UIWebView *)mainWebView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    if (navigationType == UIWebViewNavigationTypeLinkClicked) {
        //Allows for twitter links
        [self.CalenderWebView loadRequest:request];
        return NO;
    }
    
    return YES;
    
}

- (void)webViewDidFinishLoad:(UIWebView *)gradesWebView {
    
    _activityIndicator.stopAnimating;
    _activityIndicator.hidden = YES;
    
    NSLog(@"View completed loading.");
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
        NSString *loadUsernameJS = [NSString stringWithFormat:@"var inputFields = document.querySelectorAll(\"input[name='txtuserName']\"); \
                                    for (var i = inputFields.length >>> 0; i--;) { inputFields[i].value = '%@';}", savedUsername];
        NSString *loadPasswordJS = [NSString stringWithFormat:@"var inputFields = document.querySelectorAll(\"input[name='txtPassword']\"); \
                                    for (var i = inputFields.length >>> 0; i--;) { inputFields[i].value = '%@';}", savedPassword];
        
        //not working
        NSString *performSubmitJS = @"var passFields = document.querySelectorAll(\"input[type='submit']\"); \
        passFields[0].click()";
        
        // Runs the JS
        [self.CalenderWebView stringByEvaluatingJavaScriptFromString: loadUsernameJS];
        [self.CalenderWebView stringByEvaluatingJavaScriptFromString: loadPasswordJS];
        
        
    }
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    // Not necessary to do anything here.
    NSLog(@"Started Loading");
    _activityIndicator.startAnimating;
}

@end
