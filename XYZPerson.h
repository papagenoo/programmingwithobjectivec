//
//  XYZPerson.h
//  xyz
//
//  Created by Max Boytsov on 09/05/14.
//  Copyright (c) 2014 Max. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

@property (copy) NSString *firstName;
@property () NSString *lastName;
@property (readonly) NSDate *birthDate;
@property (readonly) NSString *fullName;
@property (nonatomic) NSString *testString;
@property (weak) XYZPerson *spouse;

- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andBirthDate:(NSDate *)birthDate;
- (void)sayHello;
- (void)sayGoodby;
+ (XYZPerson *)person;
+ (XYZPerson *)personWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andBirthDate:(NSDate *)birthDate;

@end
