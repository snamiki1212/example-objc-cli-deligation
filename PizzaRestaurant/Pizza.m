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

+ (NSString *) transformEnumToStr: (PizzaSize) size {
    if(size == Small) return @"small";
    if(size == Medium) return @"medium";
    if(size == Large) return @"large";
    NSLog(@"Pizza size should be s/m/l");
    return @"";
}

+ (PizzaSize) transofmrStrToEnum: (NSString *) size {
    if([size isEqualToString:@"small"]) return Small;
    if([size isEqualToString:@"medium"]) return Medium;
    if([size isEqualToString:@"large"]) return Large;
    [NSException raise:@"Invalid str" format:@"pizza size should be s/m/l."];
    return NULL;
}

+ (BOOL) includesPizzaSize: (NSString *) size {
    if([size isEqualToString:[Pizza transformEnumToStr:Small]]) return true;
    if([size isEqualToString:[Pizza transformEnumToStr:Medium]]) return true;
    if([size isEqualToString:[Pizza transformEnumToStr:Large]]) return true;
    return false;
}


@end
