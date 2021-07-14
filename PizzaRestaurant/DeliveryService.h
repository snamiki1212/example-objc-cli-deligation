//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by shunnamiki on 2021/07/13.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "ManagerDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject<ManagerDelegate>
@property Pizza *pizza;
- (instancetype)initWithPizza: (Pizza *) pizza;
- (void) deliverPizza: (Pizza *) pizza;
// TODO: The DeliveryService class will also need a method that will return an array of strings that consists of a description of every pizza it has delivered.
@end

NS_ASSUME_NONNULL_END
