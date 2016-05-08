//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza* newPizza = nil;
    
    if (_kitchenDelegate) {
        if([self.kitchenDelegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
            BOOL shouldBeLarge = [self.kitchenDelegate kitchenShouldUpgradeOrder:self];
            if (shouldBeLarge) {
                newPizza = [[Pizza alloc] initWithSize:large andToppings:toppings];
                
            }else{
                newPizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
            }
            if([self.kitchenDelegate respondsToSelector:@selector(kitchenDidMakePizza:)]){
                [self.kitchenDelegate kitchenDidMakePizza:newPizza];
            }
            
            return newPizza;
            
        }else{
            return newPizza;
        }
        
    }
    
    
    return [[Pizza alloc] initWithSize:size andToppings:toppings];
}


-(Pizza *)makeLargePepperoni{

    return [[Pizza alloc] initLargePepperoni];
}



@end
