//
//  SuggestionsViewController.m
//  
//
//  Created by Halston van der Sluys on 7/2/15.
//
//

#import "SuggestionsViewController.h"
#import "Parse/Parse.h"

@interface SuggestionsViewController ()

@end

@implementation SuggestionsViewController

- (IBAction)sendPressed:(id)sender {
    NSString *text = _textView.text;
    NSString *savedUsername = [[NSUserDefaults standardUserDefaults] objectForKey:@"USERNAME"];
    
    PFObject *userSuggestions = [PFObject objectWithClassName:@"Suggestions"];
    userSuggestions[@"Entry"] = text;
    userSuggestions[@"Username"] = savedUsername;
    [userSuggestions saveInBackground];
    
    _saved.text = @"Saved";
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(hideSaved) userInfo:nil repeats:NO];
    
    _textView.text = @"";
}

- (void)hideSaved {
    _saved.text = @"";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _textView.text = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//

@end