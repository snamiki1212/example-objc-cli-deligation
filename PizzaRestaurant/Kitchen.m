//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
#import "PizzaSize.h"

@implementation Kitchen



- (Pizza *)makePizzaWithSize:(NSString *)size toppings:(NSArray *)toppings
{
    if(![Pizza includesPizzaSize:size]){
        NSLog(@"Invalid size: size should be s/m/l.");
        return NULL;
    }
    
    if(![self.delegate kitchen:self shouldMakePizzaOfSize:(PizzaSize) [Pizza transofmrStrToEnum:size] andToppings:toppings]) {
        NSLog(@"Should not make pizza because conditions are not filled.");
        return NULL;
    }
    
    PizzaSize _size =
        [self.delegate kitchenShouldUpgradeOrder:self.delegate]
            ? Large
            : (PizzaSize)size;
    
    Pizza *pizza = [[Pizza alloc] initWith:_size andToppings:toppings];
    
    return pizza;
}

@end
