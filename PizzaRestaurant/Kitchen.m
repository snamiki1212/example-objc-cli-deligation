//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        [NSException raise:@"Error" format:@""];
    }
    
    PizzaSize _size =
        [self.delegate kitchenShouldUpgradeOrder:self.delegate]
            ? Large
            : size;
    
    Pizza *pizza = [[Pizza alloc] initWith:_size andToppings:toppings];
    
    [self.delegate kitchenDidMakePizza:pizza];
    
    return pizza;
}

@end
