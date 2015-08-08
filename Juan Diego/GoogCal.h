//
//  GoogCal.h
//  Juan Diego
//
//  Created by Halston van der Sluys on 7/2/15.
//  Copyright (c) 2015 Halston van der Sluys. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GoogCal : NSObject
{
    NSString *Title;
    NSDate *StartDate;
    NSDate *EndDate;
    NSString *Description;
    
}

@property (nonatomic, retain) NSString *Title;
@property (nonatomic, retain) NSDate *StartDate;
@property (nonatomic, retain) NSDate *EndDate;
@property (nonatomic, retain) NSString *Description;

@property (nonatomic, retain) NSString *Date;

@end
