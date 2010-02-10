/* ---------------------------------------------------------------------------------------------------
	PDFViewer: Dan Berry
	File: PDFViewController.h
	Description: The PDF view controller header file. The following objects are declared as properties: UIWebView and
	NSURL. Please see PDFViewController.m for a detailed description on the implementation.
	Version: 1.0
 
	Copyright (C) 2009 Dan Berry. All Rights Reserved.
--------------------------------------------------------------------------------------------------- */

#import <UIKit/UIKit.h>		// UIKit Framework

@interface PDFViewController : UIViewController {
	UIWebView	*webView;
	
	NSURL		*pdfURL;
}

@property (nonatomic, retain) IBOutlet UIWebView	*webView;

@property (nonatomic, retain) NSURL				*pdfURL;

@end