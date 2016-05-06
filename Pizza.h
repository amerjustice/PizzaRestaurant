//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Susan Justice on 2016-05-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,PizzaSize){
    small,
    medium,
    large
};




@interface Pizza : NSObject

@property (nonatomic) NSArray *toppings;
@property (nonatomic) PizzaSize size;

-(instancetype) initWithSize:(PizzaSize)size andToppings: (NSArray *)Toppings;

-(instancetype) initLargePepperoni;

@end
