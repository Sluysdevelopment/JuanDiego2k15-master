//
//  SuggestionsViewController.h
//  Juan Diego
//
//  Created by Halston van der Sluys on 7/2/15.
//  Copyright (c) 2015 Halston van der Sluys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuggestionsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *sendButton;
@property (weak, nonatomic) IBOutlet UILabel *saved;

@end
