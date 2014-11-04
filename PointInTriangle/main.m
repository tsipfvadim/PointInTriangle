//
//  main.m
//  PointInTriangle
//
//  Created by Admin on 02.11.14.
//  Copyright (c) 2014 tsipfvadim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMTriangle.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        TMPoint* A=[[TMPoint alloc] initPointWithCoordinatesX:1 Y:11];
        TMPoint* B=[[TMPoint alloc] initPointWithCoordinatesX:13 Y:15];
        TMPoint* C=[[TMPoint alloc] initPointWithCoordinatesX:6 Y:1];
        TMTriangle*MyTriangle=[[TMTriangle alloc] initWithPointA:A B:B C:C];
        TMPoint* P=[[TMPoint alloc] initPointWithCoordinatesX:6 Y:1];
        if ([TMTriangle isPoint:P InTriangle:MyTriangle]) {
            NSLog(@"Point P in My Triangle!!!");
        }else{
            NSLog(@"Point P is not in My Triangle!!!");
        }
        
    }
    return 0;
}

