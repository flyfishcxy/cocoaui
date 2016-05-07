/*
 Copyright (c) 2015 ideawu. All rights reserved.
 Use of this source code is governed by a license that can be
 found in the LICENSE file.

 @author:  ideawu
 @website: http://www.cocoaui.com/
 */

#import "TestController.h"

@interface TestController ()

@end

@implementation TestController

- (void)viewDidLoad {
    [super viewDidLoad];

	self.navigationItem.title = @"Test";

	IView *view = [IView namedView:@"Test"];
	[self addIViewRow:view];
	
	ISelect *sel = (ISelect *)[view getViewById:@"select1"];
	[sel onSelectKey:^(NSString *key) {
		log_debug(@"select %@", key);
	}];
	
	{
		// 自定义控件样式
		ISelect *sel = (ISelect *)[view getViewById:@"select2"];
		[sel.style set:@"border: none;"];
		[sel.arrow.style set:@"color: #f33; background: none;"];
	}
}

@end