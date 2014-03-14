//
//  ViewController.m
//  touchEvent
//
//  Created by ohtake shingo on 2014/03/14.
//  Copyright (c) 2014年 ohtake shingo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    ((TouchView*)(self.view)).delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchEvent:(TOUCH_EVENT)eventType{
       
    switch (eventType) {
        case TOUCH_EVENT_TAP:
            self.view.backgroundColor = [UIColor greenColor];
            break;
        case TOUCH_EVENT_RIGHT:
            self.view.backgroundColor = [UIColor redColor];
            break;
        case TOUCH_EVENT_LEFT:
            self.view.backgroundColor = [UIColor grayColor];
            break;
        case TOUCH_EVENT_UP:
            self.view.backgroundColor = [UIColor blueColor];
            break;
        case TOUCH_EVENT_DOWN:
            self.view.backgroundColor = [UIColor yellowColor];
            break;
            
        default:
            break;
    }
  }


@end
