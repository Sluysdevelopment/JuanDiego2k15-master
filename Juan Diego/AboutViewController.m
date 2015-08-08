//
//  AboutViewController.m
//  
//
//  Created by Halston van der Sluys on 8/3/15.
//
//
#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController



//phone and email

- (IBAction)phonePressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"Tel:(801)984-7650"]];
}
- (IBAction)emailPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto: Techhelp@skaggscatholiccenter.org"]];
    
}











//JDCHS

- (IBAction)jdchsPresed:(id)sender {
    
    NSURL *urlApp = [NSURL URLWithString: [NSString stringWithFormat:@"%@", @"http://www.jdchs.org"]];
    
    if([[UIApplication sharedApplication] canOpenURL:urlApp]){
        
        [[UIApplication sharedApplication] openURL:urlApp];
        
    }
    else{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.jdchs.org"]];
    }
    
}
















- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//

@end
