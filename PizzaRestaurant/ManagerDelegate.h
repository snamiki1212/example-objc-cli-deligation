//
//  ManagerDelegate.m
//  PizzaRestaurant
//
//  Created by shunnamiki on 2021/07/13.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef ManagerDelegate_h

@protocol ManagerDelegate <NSObject>
- (void) deliverPizza:(Pizza *)pizza;
@end

#define ManagerDelegate_h

#endif /* ManagerDelegate_h */
