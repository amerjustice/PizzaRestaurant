//
//  HappyManager.h
//  PizzaRestaurant
//
//  Created by Susan Justice on 2016-05-07.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "DeliveryService.h"

@interface HappyManager : NSObject <KitchenDelegate>
@property (nonatomic) DeliveryService* deliveryService;
@end
