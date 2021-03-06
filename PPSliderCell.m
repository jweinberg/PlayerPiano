//
//  PPSliderCell.m
//  PlayerPiano
//
//  Created by Steve Streza on 2/15/10.
//  Copyright 2010 Villainware.
//
//  See LICENSE.md file in the PlayerPiano source directory, or at
//  http://github.com/amazingsyco/PlayerPiano/blob/master/LICENSE.md
//

#import "PPSliderCell.h"
#import <VillainousStyle/VillainousStyle.h>

@implementation PPSliderCell

//-(void)drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView{
//	[self drawKnob];
//}

-(NSRect)knobRectFlipped:(BOOL)flipped{
	NSRect rect = [super knobRectFlipped:flipped];
	rect.origin.y = 0;
	rect = VSRectInset(rect, UIEdgeInsetsMake(1, 1, 1, 1));
	return rect;
}

-(void)drawKnob:(NSRect)knobRect{
	VSStyleContext *context = [[[VSStyleContext alloc] init] autorelease];
	context.frame = context.contentFrame = knobRect;
	
	[VSStyleNamed(knobStyle) draw:context];
}

@end
