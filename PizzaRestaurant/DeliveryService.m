//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by shunnamiki on 2021/07/13.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"
#import "Pizza.h"

@implementation DeliveryService
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.pizzaList = [NSMutableArray new];
    }
    return self;
}

- (void) deliverPizza: (Pizza *) pizza {
    // deliver
    DeliveryCar *car = [DeliveryCar new];
    [car deliverPizza: pizza];
    
    // append
    [self.pizzaList addObject:pizza];
    
    // logging
    NSLog(@"Deliverd Pizza List: %@", self.pizzaList);
    
    return;
}

@end
