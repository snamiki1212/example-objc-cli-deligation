//
//  Manager.h
//  PizzaRestaurant
//
//  Created by shunnamiki on 2021/07/13.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

NS_ASSUME_NONNULL_BEGIN

@interface AntiAnchovyManager : NSObject<KitchenDelegate>

// for delegations
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(id)size andToppings:(NSArray *)toppings;
- (void)kitchenDidMakePizza:(id)pizza;
@end

NS_ASSUME_NONNULL_END
