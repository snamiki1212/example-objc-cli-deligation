//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "AntiAnchovyManager.h"
#import "CheeryManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *kitchen = [Kitchen new];
        AntiAnchovyManager *antiAnchovyManager = [AntiAnchovyManager new];
        CheeryManager *cheeryManager = [CheeryManager new];
        
        BOOL managerToggle = true;
        while (TRUE) {
            NSLog(@"--------------");
            // Manager
            kitchen.delegate = managerToggle ? cheeryManager : antiAnchovyManager;
            NSLog(@"Manager is %@.", kitchen.delegate);
            managerToggle = !managerToggle;
            
            // Start cli
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            // trim
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // separate: Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];

            // parse
            NSString *size = [commandWords objectAtIndex: 0];
            NSArray *toppings = [commandWords subarrayWithRange: NSMakeRange(1, [commandWords count] - 1 )];
            
            // And then send some message to the kitchen...
            Pizza *pizza = [kitchen makePizzaWithSize:size toppings:toppings];
            if(pizza == nil) {
                NSLog(@"Pizza was not cooked.");
            } else {
                NSLog(@"Cooked! Size: %@, Toppings: %@", [Pizza transformEnumToStr:[pizza size]], [pizza toppings]);
            }
        }

    }
    return 0;
}

