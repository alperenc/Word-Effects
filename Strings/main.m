//
//  main.m
//  Strings
//
//  Created by Alp Eren Can on 24/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char decision = 'y';
        
        do {
            // 255 unit long array of characters
            char inputChars[255];
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//            NSLog(@"%d", [inputString intValue]);
            
            // print NSString object
            NSLog(@"Input was: %@", inputString);
            
            char lastChar =[inputString characterAtIndex:inputString.length - 1];
            
            if (lastChar == '?') {
                NSLog(@"I don't know.");
            } else if (lastChar == '!') {
                NSLog(@"Whoa, calm down!");
            } else {
                
                printf("What do you want to do with this?\n");
                printf("Choose an option:\n");
                printf("1. Uppercase-it\n");
                printf("2. Lowercase-it\n");
                printf("3. Numberize-it\n");
                printf("4. Canadianize-it\n");
                printf("5. De-space-it\n");
                printf("6. Count-the-words-in-it\n");
                
                char operation[3];
                fgets(operation, 3, stdin);
                NSLog(@"%s", operation);
                
                NSString *convertedString;
                
                switch (operation[0]) {
                    case '1':
                        convertedString = [inputString uppercaseString];
                        NSLog(@"%@",convertedString);
                        break;
                    case '2':
                        convertedString = [inputString lowercaseString];
                        NSLog(@"%@",convertedString);
                        break;
                    case '3':
                        if ([inputString intValue] != 0) {
                            NSLog(@"%d", [inputString intValue]);
                        } else {
                            NSLog(@"Your input is not numerical.");
                        }
                        break;
                    case '4':
                        convertedString = [inputString stringByAppendingString:@", eh?"];
                        NSLog(@"%@",convertedString);
                        break;
                    case '5':
                        convertedString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                        NSLog(@"%@",convertedString);
                        break;
                    case '6':
                        break;
                    default:
                        break;
                }
            }
            
            printf("You wanna do this again? (y/n)\n");
            decision = getchar();
            NSLog(@"%c", decision);
            
            char throwaway[3];
            fgets(throwaway, 3, stdin);
            
        } while (decision == 'y');
        
    }
    return 0;
}
