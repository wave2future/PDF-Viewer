/* ---------------------------------------------------------------------------------------------------
	PDFViewer: Dan Berry
	File: PDFViewController.m
	Description: Implementation of PDFViewController.h. Only three things to discuss here. We set our pdfURL to the
	name of the PDF included as a resource. If you try to load a PDF that is anywhere other than the main bundle this
	code won't work and you'll have to write code that points to the proper file location. We load the PDF into webView
	by sending it the loadRequest method. Lastly, we clean up after ourselves in the dealloc method.
	
	Version: 1.0
 
	Copyright (C) 2009 Dan Berry. All Rights Reserved.
--------------------------------------------------------------------------------------------------- */

#import "PDFViewController.h"	// PDF View Controller

@implementation PDFViewController

// Synthesize UI Element properties
@synthesize webView;
// Synthesize Variable properties
@synthesize pdfURL;

#pragma mark -
#pragma mark UIViewController methods

/* ---------------------------------------------------------------------------------------------------
	View Did Load method -- Set pdfURL to the PDF included as a resource for this project. Load the PDF into
	webView. Make sure to open PDFView.xib and study how it is set up and wired.
--------------------------------------------------------------------------------------------------- */
- (void)viewDidLoad {
	[super viewDidLoad];
	
	pdfURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"About iPhone SDK" ofType:@"pdf"]];
	[webView loadRequest:[NSURLRequest requestWithURL:pdfURL]];
}

#pragma mark -
#pragma mark Memory Management

/* ---------------------------------------------------------------------------------------------------
	Dealloc method -- webView, pdfURL.
--------------------------------------------------------------------------------------------------- */
- (void)dealloc {
	[webView release];
	
	[pdfURL release];
	
	[super dealloc];
}

@end