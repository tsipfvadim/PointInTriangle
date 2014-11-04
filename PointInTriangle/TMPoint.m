//
//  TMPoint.m
//  PointInTriangle
//
//  Created by Admin on 02.11.14.
//  Copyright (c) 2014 tsipfvadim. All rights reserved.
//

#import "TMPoint.h"

@implementation TMPoint
-(instancetype)initPointWithCoordinatesX:(double)x Y:(double)y{
    self=[super init];
    if (self) {
        _x=x;
        _y=y;
    };
    return self;
}
-(double)lengthToPoint:(TMPoint*)A{
    double L=sqrt(([A x]-_x)*([A x]-_x)+([A y]-_y)*([A y]-_y));
    return L;
}
-(NSString*)description{
    return [NSString stringWithFormat:@"(%f;%f)",_x,_y];
}
@end
