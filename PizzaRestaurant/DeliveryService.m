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

- (instancetype)initWithPizza: (Pizza *) pizza
{
    self = [super init];
    if (self) {
        self.pizza = pizza;
    }
    return self;
}
- (void) deliverPizza: (Pizza *) pizza {
    DeliveryCar *car = [DeliveryCar new];
    [car deliverPizza: pizza];
    return;
}

@end
