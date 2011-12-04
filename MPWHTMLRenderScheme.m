//
//  MPWHTMLRenderScheme.m
//  MPWSideweb
//
//  Created by Marcel Weiher on 11/21/11.
//  Copyright (c) 2011 metaobject ltd. All rights reserved.
//

#import "MPWHTMLRenderScheme.h"
#import "WAHtmlRenderer.h"

@class MPWBinding;

@implementation MPWHTMLRenderScheme

-renderer
{
	return [WAHtmlRenderer stream];
}

-valueForBinding:(MPWBinding*)aBinding
{
	id renderer = [self renderer];
	[renderer writeObject:[sourceScheme valueForBinding:aBinding]];
	return [renderer result];
}


@end