//
//  TMTriangle.m
//  PointInTriangle
//
//  Created by Admin on 02.11.14.
//  Copyright (c) 2014 tsipfvadim. All rights reserved.
//

#import "TMTriangle.h"

@implementation TMTriangle
-(double)sideAB{
    return [_pointA lengthToPoint:_pointB];
}
-(double)sideBC{
    return [_pointB lengthToPoint:_pointC];
}
-(double)sideCA{
    return [_pointC lengthToPoint:_pointA];
}
-(double)Perimeter{
    return self.sideAB + self.sideBC + self.sideCA;
}
-(double)Square{
    //Формула Герона
    double p=self.Perimeter/2;
    return sqrt(p*(p-self.sideAB)*(p-self.sideBC)*(p-self.sideCA));
}

-(instancetype)initWithPointA:(TMPoint*)A B:(TMPoint*)B C:(TMPoint*)C{
    self=[super init];
    if (self) {
        _pointA=A;
        _pointB=B;
        _pointC=C;
    }
    return self;
}
+(BOOL)isPoint:(TMPoint*)P InTriangle:(TMTriangle*)ABC{
    //Визначення через скалярний добуток векторів
    double ABtoP=(ABC.pointA.x-P.x)*(ABC.pointB.y-ABC.pointA.y)-(ABC.pointB.x-ABC.pointA.x)*(ABC.pointA.y-P.y);
    double BCtoP=(ABC.pointB.x-P.x)*(ABC.pointC.y-ABC.pointB.y)-(ABC.pointC.x-ABC.pointB.x)*(ABC.pointB.y-P.y);
    double CAtoP=(ABC.pointC.x-P.x)*(ABC.pointA.y-ABC.pointC.y)-(ABC.pointA.x-ABC.pointC.x)*(ABC.pointC.y-P.y);
    if ((ABtoP >= 0 && BCtoP >= 0 && CAtoP >= 0)||(ABtoP <= 0 && BCtoP <= 0 && CAtoP <= 0)) {
        return YES;
    }
    return NO;
}
@end
