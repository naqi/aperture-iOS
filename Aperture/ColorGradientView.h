//
//  ColorGradientView.h
//  Aperture
//
//  Created by Pingboard on 4/12/16.
//  Copyright © 2016 Mobineer. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ColorGradientView : NSView
{
    NSColor *startingColor;
    NSColor *endingColor;
    int angle;
}

// Define the variables as properties
@property(nonatomic, retain) NSColor *startingColor;
@property(nonatomic, retain) NSColor *endingColor;
@property(assign) int angle;

@end