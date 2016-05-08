//
//  DeliveryCar.m
//  PizzaRestaurant
//
//  Created by Susan Justice on 2016-05-08.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DeliveryCar.h"

@implementation DeliveryCar

-(BOOL)deliverPizza:(Pizza *)pizza{
    
    NSLog(@"Your Pizza has been delivered! %@", pizza);
    
    return YES;
    
}


@end
