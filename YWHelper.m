//
//  YWHelper.m
//  RainReminder
//
//  Created by Trent Milton on 4/12/11.
//  Copyright (c) 2011 shaydes.dsgn. All rights reserved.
//

#import "YWHelper.h"

@implementation YWHelper

#pragma mark - Weather

+ (NSArray *) getWeather:(int)woeid
{
    NSString *urlString = [NSString stringWithFormat:@"http://weather.yahooapis.com/forecastrss?w=%i&u=c", woeid];
    NSURL *url = [NSURL URLWithString:urlString];
    TBXML *tbxml = [TBXML tbxmlWithURL:url];
    TBXMLElement *root = tbxml.rootXMLElement;
    TBXMLElement *channelElement = [TBXML childElementNamed:@"channel" parentElement:root];
    TBXMLElement *itemElement = [TBXML childElementNamed:@"item" parentElement:channelElement];
    TBXMLElement *yweatherElement = [TBXML childElementNamed:@"yweather:forecast" parentElement:itemElement];
    
    NSMutableArray *forecasts = [[NSMutableArray alloc] init];
    do
    {
        if (yweatherElement)
        {
            // TODO this is the only way I know for know how to test if the forecast is blank
            if ([TBXML valueOfAttributeNamed:@"day" forElement:yweatherElement])
            {
                YWForecast *forecast = [[YWForecast alloc] init];
                forecast.day = [TBXML valueOfAttributeNamed:@"day" forElement:yweatherElement];
                forecast.date = [TBXML valueOfAttributeNamed:@"date" forElement:yweatherElement];
                forecast.low = [[TBXML valueOfAttributeNamed:@"low" forElement:yweatherElement] intValue];
                forecast.high = [[TBXML valueOfAttributeNamed:@"high" forElement:yweatherElement] intValue];
                forecast.text = [TBXML valueOfAttributeNamed:@"text" forElement:yweatherElement];
                forecast.code = [[TBXML valueOfAttributeNamed:@"code" forElement:yweatherElement] intValue];            
                [forecasts addObject:forecast];
            }
        }
    } while ((yweatherElement = yweatherElement->nextSibling));      
    
    return forecasts;
}

#pragma mark - WOEID

+ (int) getWOEID:(float)latitude longitude:(float)longitude yahooAPIKey:(NSString *)yahooAPIKey
{
    NSString *urlString = [NSString stringWithFormat:@"http://where.yahooapis.com/geocode?q=%f,%f&gflags=R&appid=%@", latitude, longitude, yahooAPIKey];
    NSURL *url = [NSURL URLWithString:urlString];
    TBXML *tbxml = [TBXML tbxmlWithURL:url];
    TBXMLElement *root = tbxml.rootXMLElement;
    TBXMLElement *resultElement = [TBXML childElementNamed:@"Result" parentElement:root];
    TBXMLElement *woeidElement = [TBXML childElementNamed:@"woeid" parentElement:resultElement];
    return [[TBXML textForElement:woeidElement] intValue];
}

@end
