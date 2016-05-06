//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            

            NSLog(@"Command words is %@", commandWords);
            
            NSMutableArray *mutableCommandWords = [commandWords mutableCopy];
            
            NSString *firstCommand = [mutableCommandWords firstObject];
            [mutableCommandWords removeObjectAtIndex:0];
            
            firstCommand = [firstCommand uppercaseString];
            
//            if([pizzaSize isEqualToString: @"SMALL"]){
//                NSLog(@"asked for a small");
//                Pizza *newPizza = [restaurantKitchen makePizzaWithSize:small toppings:mutableCommandWords];
//            }else if ([pizzaSize isEqualToString:@"MEDIUM"]) {
//                NSLog(@"asked for a medium");
//                Pizza *newPizza = [restaurantKitchen makePizzaWithSize:medium toppings:mutableCommandWords];
//            }
            
            PizzaSize size = large;
            
            if([firstCommand isEqualToString: @"SMALL"]){
                NSLog(@"asked for a small");
                size = small;
            }else if ([firstCommand isEqualToString:@"MEDIUM"]) {
                NSLog(@"asked for a medium");
                size  = medium;
            }else if ([firstCommand isEqualToString:@"PEPPERONI"]){
                NSLog(@"you ordered a Mouth-Watering Pepperoni Pizza!");
                size = large;
                [mutableCommandWords addObject:@"Pepperoni"];
                [mutableCommandWords addObject:@"cheese"];
                
            }
            
            
//            NSString *pepperoniCommand = [mutableCommandWords firstObject];
//            
//            BOOL isPepperoni = [pepperoniCommand isEqualToString:@"pepperoni"];
//            
//            if (isPepperoni) {
//                // pepperoni
//                Pizza *newPizza = [restaurantKitchen makePizzaWithSize:size toppings:@[@"pepperoni", @"cheese"]];
//                
//            } else {
//                // regular 'za
            
                Pizza *newPizza = [restaurantKitchen makePizzaWithSize:size toppings:mutableCommandWords];
//            }
            

            
//
        }

    }
    return 0;
}

