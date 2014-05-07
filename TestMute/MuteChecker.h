//
//  CheckMute.h
//  TestMute
//
//  Created by hoishing on 7/5/14.
//  Copyright (c) 2014 FBM Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>

typedef void (^MuteCheckCompletionHandler)(NSTimeInterval lapse, BOOL muted);

@interface MuteChecker : NSObject

// this class must use with a MuteChecker.caf (a 0.2 sec mute sound) in Bundle

@property (nonatomic,assign) SystemSoundID soundId;
@property (strong) MuteCheckCompletionHandler completionBlk;

-(instancetype)initWithCompletionBlk:(MuteCheckCompletionHandler)completionBlk;
-(void)check;

@end
