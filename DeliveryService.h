//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Susan Justice on 2016-05-08.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface DeliveryService : NSObject
@property NSMutableArray *descriptionOfPizza;

-(BOOL)deliverPizza:(Pizza *)pizza;

-(NSMutableArray *) deliveredPizzaDescription;



@end
