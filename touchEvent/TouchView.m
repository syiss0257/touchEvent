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
         [self.delegate touchEvent:TOUCH_EVENT_RIGHT];
        } else {
            NSLog(@"Left");
         [self.delegate touchEvent:TOUCH_EVENT_LEFT];
        }
    } else if ( distanceHorizontal <= distanceVertical && distanceVertical >= 50){
        if ( endPoint.y > startPoint.y ) {
            NSLog(@"Down");
            [self.delegate touchEvent:TOUCH_EVENT_DOWN];
        } else {
            NSLog(@"Up");
         [self.delegate touchEvent:TOUCH_EVENT_UP];
        }
    } else{
           NSLog(@"Tap");
         [self.delegate touchEvent:TOUCH_EVENT_TAP];
    }
 }

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{

}

@end
