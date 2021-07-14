//
//  CheeryManager.h
//  PizzaRestaurant
//
//  Created by shunnamiki on 2021/07/13.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheeryManager : NSObject<KitchenDelegate>
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize *)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
@end

NS_ASSUME_NONNULL_END
