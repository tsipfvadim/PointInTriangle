//
//  TMPoint.h
//  PointInTriangle
//
//  Created by Admin on 02.11.14.
//  Copyright (c) 2014 tsipfvadim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMPoint : NSObject
@property(nonatomic,assign) double x;
@property(nonatomic,assign) double y;
-(instancetype)initPointWithCoordinatesX:(double)x Y:(double)y;
-(double)lengthToPoint:(TMPoint*)A;
@end
