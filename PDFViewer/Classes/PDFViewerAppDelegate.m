/* ---------------------------------------------------------------------------------------------------
	PDFViewer: Dan Berry
	File: PDFViewerAppDelegate.m
	Description: Implementation of PDFViewerAppDelegate.h. The implementation for this class is fairly simple.
	controller is added as a subview of window, and all properties are are cleaned up in the dealloc method.
	Version: 1.0
 
	Copyright (C) 2009 Dan Berry. All Rights Reserved.
--------------------------------------------------------------------------------------------------- */

#import "PDFViewerAppDelegate.h"	// Application Delegate

@implementation PDFViewerAppDelegate

// Synthesize UI Element properties
@synthesize window, controller;

/* ---------------------------------------------------------------------------------------------------
	Application Did Finish Launching method -- Add controller (an instance of PDFViewController) as a subview of
	window. It is important to note here that you should open MainWindow.xib and study how it is set up and wired.
	If you are having a problem with the way something looks it's very likely that something isn't done in Interface
	Builder properly.
--------------------------------------------------------------------------------------------------- */
- (void)applicationDidFinishLaunching:(UIApplication *)application {
	[window addSubview:[controller view]];
	[window makeKeyAndVisible];
}

#pragma mark -
#pragma mark Memory Management

/* ---------------------------------------------------------------------------------------------------
	Dealloc method -- window, controller.
--------------------------------------------------------------------------------------------------- */
- (void)dealloc {
	[window release];
	[controller release];
	
	[super dealloc];
}

@end