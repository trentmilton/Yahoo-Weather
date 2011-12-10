//
//  YWForecast.h
//  RainReminder
//
//  Created by Trent Milton on 4/12/11.
//  Copyright (c) 2011 shaydes.dsgn. All rights reserved.
//

@interface YWForecast : NSObject

@property (nonatomic, retain) NSString *day;
@property (nonatomic, retain) NSString *date;
@property (nonatomic) int low;
@property (nonatomic) int high;
@property (nonatomic, retain) NSString *text;
@property (nonatomic) int code;

@end
