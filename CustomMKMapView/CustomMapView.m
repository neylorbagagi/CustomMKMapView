//
//  CustomMapView.m
//  CustomMKMapView
//
//  Created by Neylor Bagagi on 12/14/15.
//  Copyright © 2015 Neylor Bagagi. All rights reserved.
//

#import "CustomMapView.h"

@implementation CustomMapView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        NSArray *subviewArray = [[NSBundle mainBundle] loadNibNamed:@"CustomMapView" owner:self options:nil];
        self = [subviewArray objectAtIndex:0];
        [self setFrame:frame];
    }
    return self;

}
@end
