//
//  main.m
//  xyz
//
//  Created by Max Boytsov on 09/05/14.
//  Copyright (c) 2014 Max. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"
#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        //XYZPerson *person =
        
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        [dateFormat setDateFormat:@"yyyy.MM.dd"];
        NSDate *date = [dateFormat dateFromString:@"1980.02.04"];
        
        XYZPerson *person = [XYZShoutingPerson personWithFirstName:@"Max"
                                                       andLastName:@"Boytsov"
                                                      andBirthDate:date];
        
        NSLog(@"Date: %@", [dateFormat stringFromDate:date]);

        
        NSMutableString *firstName = [NSMutableString stringWithString:@"Maxim!"];
        person.firstName = firstName;
        [firstName appendString:@"??"];
        //firstName = @"MMM";
        
        //person.lastName = @"Boytsov";
        [person sayHello];
        [person sayGoodby];
        
        XYZPerson *spouse = [XYZPerson person];
        spouse.firstName = @"spouse";
        person.spouse = spouse;
        spouse.spouse = person;
        NSLog(@"++++++++++++++");
        NSLog(@"%@, %@", person, spouse);
        spouse = nil;
        //person = nil;
        
        NSLog(@"Person's birth date is: %@", person.birthDate);
        NSLog(@"Person's full name is: %@", person.fullName);
        
        NSLog(@"test string is %@", person.testString);
        
        XYZPerson *nilPerson;
        if (nilPerson) {
            NSLog(@"nilPerson is assigned");
        } else {
            NSLog(@"nilPerson is not assigned");
        }
        
        XYZPerson * strongStr =[XYZShoutingPerson person];
        XYZPerson * __weak weakStr =strongStr;
        NSLog(@"%@", strongStr);
        NSLog(@"%@", weakStr);
        strongStr = nil;
        NSLog(@"%@", strongStr);
        NSLog(@"%@", weakStr);
        
        
        
        XYZPerson *person1 = [[XYZPerson alloc] initWithFirstName:@"John"
                  andLastName:@"Doe"
                 andBirthDate:nil];
        
        XYZShoutingPerson *shoutingPerson =
        [[XYZShoutingPerson alloc] initWithFirstName:@"Monica"
                                         andLastName:@"Robinson"
                                         andBirthDate:nil];
        NSLog(@"!!!!%@", person1);
        NSLog(@"The two people are %@ and %@",
              [person1 lastNameFirstNameString], [shoutingPerson lastNameFirstNameString]);
    }
    return 0;
}


