//
//  TouchView.m
//  touchEvent
//
//  Created by ohtake shingo on 2014/03/14.
//  Copyright (c) 2014年 ohtake shingo. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    startPoint = [touch locationInView:self];
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{

}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    endPoint = [touch locationInView:self];

    NSInteger distanceHorizontal = ABS(endPoint.x - startPoint.x );
    NSInteger distanceVertical = ABS(endPoint.y - startPoint.y );

    if ( distanceHorizontal > distanceVertical && distanceHorizontal >= 50) {
        if ( endPoint.x > startPoint.x ) {
            NSLog(@"Right");
            self.backgroundColor = [UIColor blackColor];
        } else {
            NSLog(@"Left");
            self.backgroundColor = [UIColor yellowColor];
        }
    } else if ( distanceHorizontal <= distanceVertical && distanceVertical >= 50){
        if ( endPoint.y > startPoint.y ) {
            NSLog(@"Down");
            self.backgroundColor = [UIColor blueColor];
        } else {
            NSLog(@"Up");
            self.backgroundColor = [UIColor redColor];
        }
    } else{
           NSLog(@"Tap");
         self.backgroundColor = [UIColor whiteColor];
    }
 }

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{

}

@end
