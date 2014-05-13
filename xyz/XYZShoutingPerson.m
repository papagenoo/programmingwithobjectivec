//
//  XYZShoutingPerson.m
//  xyz
//
//  Created by Max Boytsov on 10/05/14.
//  Copyright (c) 2014 Max. All rights reserved.
//

#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson

- (void)saySomething:(NSString *)greeting
{
    NSString *upperCaseGreeting = [greeting uppercaseString];
    NSLog(@"%@", upperCaseGreeting);
}

@end
