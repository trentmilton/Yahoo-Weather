//
//  YWHelper.h
//  RainReminder
//
//  Created by Trent Milton on 4/12/11.
//  Copyright (c) 2011 shaydes.dsgn. All rights reserved.
//

#import "TBXML.h"
#import "YWForecast.h"

@interface YWHelper : NSObject

+ (int) getWOEID:(float)latitude longitude:(float)longitude yahooAPIKey:(NSString *)yahooAPIKey;
+ (NSArray *) getWeather:(int)woeid;

@end
