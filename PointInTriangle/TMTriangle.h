//
//  TMTriangle.h
//  PointInTriangle
//
//  Created by Admin on 02.11.14.
//  Copyright (c) 2014 tsipfvadim. All rights reserved.
//

#import "TMPoint.h"

@interface TMTriangle : NSObject

@property(nonatomic,copy)TMPoint*pointA;
@property(nonatomic,copy)TMPoint*pointB;
@property(nonatomic,copy)TMPoint*pointC;
@property(nonatomic,readonly)double sideAB;
@property(nonatomic,readonly)double sideBC;
@property(nonatomic,readonly)double sideCA;
@property(nonatomic,readonly)double Perimeter;
@property(nonatomic,readonly)double Square;
-(instancetype)initWithPointA:(TMPoint*)A B:(TMPoint*)B C:(TMPoint*)C;
+(BOOL)isPoint:(TMPoint*)P InTriangle:(TMTriangle*)ABC;

@end
