//
//  ColorGradientView.m
//  Aperture
//
//  Created by Pingboard on 4/12/16.
//  Copyright © 2016 Mobineer. All rights reserved.
//

#import "ColorGradientView.h"
@implementation ColorGradientView

// Automatically create accessor methods
@synthesize startingColor;
@synthesize endingColor;
@synthesize angle;

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        [self setStartingColor:[NSColor colorWithCalibratedWhite:1.0 alpha:1.0]];
        [self setEndingColor:nil];
        [self setAngle:270];
    }
    return self;
}

- (void)drawRect:(NSRect)rect {
    
    if (endingColor == nil || [startingColor isEqual:endingColor]) {
        // Fill view with a standard background color
        [startingColor set];
        NSRectFill(rect);
    }
    else {
        // Fill view with a top-down gradient
        // from startingColor to endingColor
        NSGradient* aGradient = [[NSGradient alloc]
                                 initWithStartingColor:startingColor
                                 endingColor:endingColor];
//        [aGradient drawInRect:[self bounds] angle:angle];
        [aGradient drawFromCenter:NSMakePoint(100,100)
                          radius:(CGFloat)100
                        toCenter:NSMakePoint(0,0)
                          radius: (CGFloat)80.3
                         options:	NSGradientDrawsBeforeStartingLocation
         ];
    }
}

@end