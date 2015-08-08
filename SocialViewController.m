//
//  SocialViewController.m
//  
//
//  Created by Halston van der Sluys on 7/2/15.
//
//

#import "SocialViewController.h"

@interface SocialViewController ()

@end

@implementation SocialViewController

// Twitter

- (IBAction)twitterPresed:(id)sender {
    
    NSURL *urlApp = [NSURL URLWithString: [NSString stringWithFormat:@"%@", @"twitter:///user?screen_name=JDCHS"]];
    
    if([[UIApplication sharedApplication] canOpenURL:urlApp]){
        
        [[UIApplication sharedApplication] openURL:urlApp];
        
    }
    else{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/JDCHS"]];
    }
    
}


//facebook

- (IBAction)facebookPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/JuanDiegoCHS"]];
}
- (IBAction)phonePressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"Tel:(801)984-7650"]];
}
- (IBAction)emailPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto: Techhelp@skaggscatholiccenter.org"]];
    
}


//instagram
- (IBAction)instagramPresed:(id)sender {
    
    NSURL *urlApp = [NSURL URLWithString: [NSString stringWithFormat:@"%@", @"https://instagram.com/jdchs/?hl=en"]];
    
    if([[UIApplication sharedApplication] canOpenURL:urlApp]){
        
        [[UIApplication sharedApplication] openURL:urlApp];
        
    }
    else{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://instagram.com/jdchs/?hl=en"]];
    }
    
}



//Youtube
- (IBAction)youtubePresed:(id)sender {
    
    NSURL *urlApp = [NSURL URLWithString: [NSString stringWithFormat:@"%@", @"https://www.youtube.com/channel/UCZ6a-KF00z6qW9Xi1WK1k8g"]];
    
    if([[UIApplication sharedApplication] canOpenURL:urlApp]){
        
        [[UIApplication sharedApplication] openURL:urlApp];
        
    }
    else{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.youtube.com/channel/UCZ6a-KF00z6qW9Xi1WK1k8g"]];
    }
    
}



//the cube
- (IBAction)cubePresed:(id)sender {
    
    NSURL *urlApp = [NSURL URLWithString: [NSString stringWithFormat:@"%@", @"http://thecube.com/event/juan-diego-catholic-high-school-graduation-2015-507434/cubes"]];
    
    if([[UIApplication sharedApplication] canOpenURL:urlApp]){
        
        [[UIApplication sharedApplication] openURL:urlApp];
        
    }
    else{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://thecube.com/event/juan-diego-catholic-high-school-graduation-2015-507434/cubes"]];
    }
    
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
