//
//  XYZPerson+XYZPersonNameDisplayAdditions.m
//  xyz
//
//  Created by Max Boytsov on 11/05/14.
//  Copyright (c) 2014 Max. All rights reserved.
//

#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

@implementation XYZPerson (XYZPersonNameDisplayAdditions)

- (NSString *)lastNameFirstNameString
{
    return [NSString stringWithFormat:@"%@, %@", self.lastName, self.firstName];
}

@end
