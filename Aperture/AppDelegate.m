//
//  AppDelegate.m
//  Aperture
//
//  Created by Pingboard on 4/12/16.
//  Copyright (c) 2016 Mobineer. All rights reserved.
//


#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>
#import "ColorGradientView.h"
@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application

    NSImage  *image = [NSImage imageNamed:@"background"];
    ColorGradientView *gradientView = [[ColorGradientView alloc] initWithFrame:NSMakeRect(0, 0, image.size.width/4, image.size.height/4)];
    
    [gradientView setStartingColor:[[NSColor orangeColor] colorWithAlphaComponent:0.5f]];
    [gradientView setEndingColor:[[NSColor lightGrayColor] colorWithAlphaComponent:0.5f]];
    [gradientView setAngle:160];
    
    NSViewController *viewController = [[NSViewController alloc] init];
    
    [viewController setView:gradientView];
    
    NSImageView *imageView = [[NSImageView alloc] initWithFrame:gradientView.frame];
//    imageView.alphaValue = 0.5f;
    [imageView setImage:image];
    [imageView addSubview:gradientView];
    viewController.view = imageView;
    
    self.window.contentViewController = viewController;
    
//    for (int index = 100; index < = ; <#increment#>) {
//        <#statements#>
//    }

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end