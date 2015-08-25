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
        
        do {
            // 255 unit long array of characters
            char inputChars[255];
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
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
                
                char operation = getchar();
                NSLog(@"%c", operation);
                
                NSString *convertedString;
                
                switch (operation) {
                    case '1':
                        convertedString = [inputString uppercaseString];
                        NSLog(@"%@",convertedString);
                        break;
                    case '2':
                        convertedString = [inputString lowercaseString];
                        NSLog(@"%@",convertedString);
                        break;
                    case '3':
                        convertedString = [inputString lowercaseString];
                        NSLog(@"%@",convertedString);
                        break;
                    case '4':
                        convertedString = [inputString stringByAppendingString:@", eh?"];
                        NSLog(@"%@",convertedString);
                        break;
                    case '5':
                        convertedString = [inputString lowercaseString];
                        NSLog(@"%@",convertedString);
                        break;
                    default:
                        break;
                }
                
                printf("You wanna do this again? (y/n)");
            }
        } while (false);
        
    }
    return 0;
}
