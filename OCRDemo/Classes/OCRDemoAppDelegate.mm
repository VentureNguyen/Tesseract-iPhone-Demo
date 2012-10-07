//
//  OCRDemoAppDelegate.m
//  OCRDemo
//
//  Created by Nolan Brown on 12/30/09.

//

#import "OCRDemoAppDelegate.h"
#import "OCRDemoViewController.h"

@implementation OCRDemoAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    viewController = [[OCRDemoViewController alloc] init];    

    // Override point for customization after app launch
    
    //[window addSubview:viewController.view]; //Preferred method is to set the window's root view controller
    self.window.rootViewController = viewController;
    
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
