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

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *kitchen = [Kitchen new];
        AntiAnchovyManager *antiAnchovyManager = [AntiAnchovyManager new];
        kitchen.delegate = antiAnchovyManager;
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
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
            NSLog(@"%@", pizza);
        }

    }
    return 0;
}

