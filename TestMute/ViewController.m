//
//  ViewController.m
//  TestMute
//
//  Created by hoishing on 7/5/14.
//  Copyright (c) 2014 FBM Development. All rights reserved.
//

#import "ViewController.h"
#import "MuteChecker.h"




@interface ViewController ()

@property (nonatomic, strong) MuteChecker *muteChecker;
- (IBAction)playMuteSound:(id)sender;

@end



@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.muteChecker = [[MuteChecker alloc] initWithCompletionBlk:^(NSTimeInterval lapse, BOOL muted) {
		NSLog(@"lapsed: %f", lapse);
		NSLog(@"muted: %d", muted);
	}];
}



- (IBAction)playMuteSound:(id)sender {
	[_muteChecker check];
}
@end
