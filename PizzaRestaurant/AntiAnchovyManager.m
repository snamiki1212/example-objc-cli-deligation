//
//  Manager.m
//  PizzaRestaurant
//
//  Created by shunnamiki on 2021/07/13.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "AntiAnchovyManager.h"
#import "Pizza.h"
#import "PizzaSize.h"
#import "Kitchen.h"

@implementation AntiAnchovyManager
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    for(NSString *topping in toppings) {
        if([topping isEqualTo: @"anchovies"]){
            return false;
        }
    }
    
    return true;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return false;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    [self didMakePizza:pizza];
    return;
}

- (void)didMakePizza: (Pizza *) pizza
{
    [self.delegate deliverPizza:pizza];
    return;
}
@end
