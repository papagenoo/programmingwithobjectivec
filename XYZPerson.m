//
//  XYZPerson.m
//  xyz
//
//  Created by Max Boytsov on 09/05/14.
//  Copyright (c) 2014 Max. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson

//@synthesize testString = _testString;

- (id)init
{
    return [self initWithFirstName:@"" andLastName:@"" andBirthDate:nil];
}

- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andBirthDate:(NSDate *)birthDate
{
//    NSLog(@"%@", birthDate);
    self = [super init];
    
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _birthDate = birthDate;
    }
    
    return self;
}

- (NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (NSString *)testString
{
    if (!_testString) {
            _testString = @"qwerty";
    }
    
    return _testString;
}

//- (void)setTestString:(NSString *)testString
//{
//    _testString = testString;
//}

- (void)sayHello
{
    [self saySomething:[NSString stringWithFormat:@"Hello, %@!", self.fullName]];
}

- (void)sayGoodby
{
    [self saySomething:@"Goodby, world!"];
}

- (void)saySomething:(NSString *)greeting
{
    NSLog(@"%@", greeting);
}

+ (XYZPerson *)person;
{
    return [[self alloc] init];
}

+ (XYZPerson *)personWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andBirthDate:(NSDate *)birthDate
{
//    NSLog(@"%@", birthDate);

    return [[self alloc] initWithFirstName:firstName andLastName:lastName andBirthDate:birthDate];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[Person %@]", self.fullName];
}

- (void)dealloc {
    NSLog(@"XYZPerson %@ is being deallocated", [self description]);
    //self.spouse = nil;
}

@end
