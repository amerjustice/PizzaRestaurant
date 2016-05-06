//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Susan Justice on 2016-05-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)size andToppings: (NSArray *)toppings
{
    self = [super init];
    if (self) {
        _size = large;
        _toppings = toppings;
    }
    return self;
}

- (instancetype)initLargePepperoni
{
    self = [super init];
    if (self) {
        _size = large;
        _toppings = @[@"Pepperoni"];
    }
    return self;
}








@end
