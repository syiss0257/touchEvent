//
//  TouchView.h
//  touchEvent
//
//  Created by ohtake shingo on 2014/03/14.
//  Copyright (c) 2014年 ohtake shingo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    TOUCH_EVENT_TAP = 0,
    TOUCH_EVENT_RIGHT,
    TOUCH_EVENT_LEFT,
    TOUCH_EVENT_UP,
    TOUCH_EVENT_DOWN
}TOUCH_EVENT;


@protocol TouchViewDelegate <NSObject>
-(void)touchEvent:(TOUCH_EVENT)eventType;
@end

@interface TouchView : UIView{
    CGPoint startPoint;
    CGPoint endPoint;
}





@property (nonatomic, strong) id <TouchViewDelegate> delegate;

@end
