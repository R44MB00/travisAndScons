/*Objective-C programs are executed via GNUStep on Linux*/


#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    // read filename from the first argument
    NSString* filename = [NSString stringWithCString:argv[1] encoding:NSASCIIStringEncoding];
    NSString* content = [NSString stringWithContentsOfFile:filename encoding:NSASCIIStringEncoding error:nil];
    NSScanner* scanner = [NSScanner scannerWithString:content];
      
    while (![scanner isAtEnd]) {
        NSString* line;
        [scanner scanUpToString:@"\n" intoString:&line];
        
        // perform your calculations here
        
        // output an answer
        //printf("%s\n", [line cStringUsingEncoding:NSASCIIStringEncoding]);
        NSString *lower = [line lowercaseString]; 
        printf("%s\n", [lower cStringUsingEncoding:NSASCIIStringEncoding]);
    }
    
    [pool release];
    return 0;
}
