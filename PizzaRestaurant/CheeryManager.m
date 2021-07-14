//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by shunnamiki on 2021/07/13.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize *)size andToppings:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    NSLog(@":D");
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    [self didMakePizza:pizza];
    return;
}

- (void)didMakePizza: (Pizza *) pizza
{
    [self.delegate deliverPizza: pizza];
    return;
}

@end
