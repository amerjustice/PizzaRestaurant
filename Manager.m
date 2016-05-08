//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Susan Justice on 2016-05-07.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "Pizza.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return [toppings containsObject:[@"anchovies" uppercaseString]];
    
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}




@end
