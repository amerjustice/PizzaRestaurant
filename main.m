//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Manager.h"
#import "HappyManager.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        DeliveryService *deliveryServce = [DeliveryService new];

        Manager *angryManager = nil;
        
        HappyManager *happyManager = nil;
        
        
        
        while (TRUE) {
            // Loop forever
            NSLog(@"Which Manager would you like? A. Angry B.Happy \nC.None \nPick your choice:");
            char managerChoice[100];
            fgets(managerChoice, 100, stdin);
            
            NSString *managerInput = [[NSString alloc] initWithUTF8String:managerChoice];
            
            if([managerInput characterAtIndex:0] == 'A'){
                
                if (angryManager == nil) {
                    angryManager = [Manager new];
                }
                
                restaurantKitchen.kitchenDelegate = angryManager;
                
            }else if([managerInput characterAtIndex:0] == 'B'){
                
                if (happyManager == nil){
                    happyManager = [HappyManager new];
                    happyManager.deliveryService = deliveryServce;
                }
                
                restaurantKitchen.kitchenDelegate = happyManager;
                
            }else{
                restaurantKitchen.kitchenDelegate = nil;
            
            }
                  
            
            
            
            NSLog(@"Please pick your pizza size and toppings:");
            
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
            
            Pizza* newPizza = [restaurantKitchen makePizzaWithSize:size toppings:mutableCommandWords];
            if(newPizza){
                NSLog(@"Size %i", (int)newPizza.size);
                NSLog(@"Toppings %@", mutableCommandWords);
            }else {
                NSLog(@"No Pizza was created");
            }
            
            NSMutableArray *resultofPizza = [deliveryServce deliveredPizzaDescription];
            NSLog(@" %@", resultofPizza);
            


            
//
        }

    }
    return 0;
}

