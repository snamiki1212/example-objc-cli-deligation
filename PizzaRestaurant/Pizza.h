//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by shunnamiki on 2021/07/13.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "PizzaSize.h"

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject<KitchenDelegate>
@property PizzaSize *size;
@property NSArray *toppings;
- (instancetype)initWith: (PizzaSize *) size andToppings: (NSArray *) toppings;
@end

NS_ASSUME_NONNULL_END

