//
//  ForecastCell.h
//  Yahoo Weather
//
//  Created by Trent Milton on 7/12/11.
//  Copyright (c) 2011 shaydes.dsgn. All rights reserved.
//


@interface YWForecastCell : UITableViewCell

@property (nonatomic, retain) IBOutlet UILabel *day;
@property (nonatomic, retain) IBOutlet UILabel *date;
@property (nonatomic, retain) IBOutlet UILabel *low;
@property (nonatomic, retain) IBOutlet UILabel *high;
@property (nonatomic, retain) IBOutlet UILabel *text;
@property (nonatomic, retain) IBOutlet UILabel *code;
@end
