//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by shunnamiki on 2021/07/13.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"
#import "PizzaSize.h"

@implementation Pizza
- (instancetype)initWith: (PizzaSize *) size andToppings: (NSArray *) toppings
{
    self = [super init];
    if (self) {
        self.size = size;
        self.toppings = toppings;
    }
    return self;
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(id)size andToppings:(NSArray *)toppings {
    if(size != Small || size != Medium || size != Large){
        return false;
    }

    // TODO: valid toppings value?
    return true;
}

- (void)kitchenDidMakePizza:(id)pizza {
    // TODOO:
    return;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    // TODOO:
    return true;
}

@end
