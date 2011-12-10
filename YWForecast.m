//
//  YWForecast.m
//  Yahoo Weather
//
//  Created by Trent Milton on 4/12/11.
//  Copyright (c) 2011 shaydes.dsgn. All rights reserved.
//

#import "YWForecast.h"

@implementation YWForecast

@synthesize day, date, text;
@synthesize low, high, code;

- (YWForecastCell *) getCell:(UITableView *)tableView
{
    YWForecastCell *cell = (YWForecastCell *)[tableView dequeueReusableCellWithIdentifier:@"YWForecastCell"];
    cell.day.text = day;
    cell.date.text = date;
    cell.low.text = [[NSString alloc] initWithFormat:@"%i", low];
    cell.high.text = [[NSString alloc] initWithFormat:@"%i", high];  
    return cell;
}

@end
