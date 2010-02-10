/* ---------------------------------------------------------------------------------------------------
	PDFViewer: Dan Berry
	File: main.m
	Description: main.m
	Version: 1.1
 
	Copyright (C) 2009 Dan Berry. All Rights Reserved.
--------------------------------------------------------------------------------------------------- */

#import <UIKit/UIKit.h>		// UIKit Framework

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
