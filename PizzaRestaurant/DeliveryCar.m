//
//  DeliveryCar.m
//  PizzaRestaurant
//
//  Created by shunnamiki on 2021/07/13.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "DeliveryCar.h"
#import "Pizza.h"

@implementation DeliveryCar
- (void) deliverPizza: (Pizza *) pizza {
    NSLog(@"Pizza Deliverd!(%@)", pizza);
    return;
}
@end
