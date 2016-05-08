//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Susan Justice on 2016-05-08.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"


@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _descriptionOfPizza = [[NSMutableArray alloc] init];
    }
    return self;
}



-(BOOL)deliverPizza:(Pizza *)pizza {

    DeliveryCar *myCar = [[DeliveryCar alloc] init];
    BOOL delivered = [myCar deliverPizza:pizza];
    [_descriptionOfPizza addObject:pizza.description];
    
    
    return delivered;
    
}

-(NSMutableArray *) deliveredPizzaDescription{
    return _descriptionOfPizza;
}
    





@end
