//
//  HappyManager.m
//  PizzaRestaurant
//
//  Created by Susan Justice on 2016-05-07.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "HappyManager.h"
#import "Pizza.h"
#import "DeliveryService.h"


@implementation HappyManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Thanks for ordering!");
    
    [self.deliveryService deliverPizza:pizza];
}



@end
