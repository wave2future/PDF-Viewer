/* ---------------------------------------------------------------------------------------------------
	PDFViewer: Dan Berry
	File: PDFViewerAppDelegate.h
	Description: The application delegate header file. The following objects are declared as properties: UIWindow and
	PDFViewController. Please see PDFViewerAppDelegate.m for a detailed description on the implementation.
	Version: 1.0
 
	Copyright (C) 2009 Dan Berry. All Rights Reserved.
--------------------------------------------------------------------------------------------------- */

#import <UIKit/UIKit.h>			// UIKit Framework
#import "PDFViewController.h"	// PDF View Controller

@interface PDFViewerAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	PDFViewController	*controller;
}

@property (nonatomic, retain) IBOutlet UIWindow			*window;
@property (nonatomic, retain) IBOutlet PDFViewController	*controller;

@end