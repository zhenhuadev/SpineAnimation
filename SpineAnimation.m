//
//  SpineAnimation.m
//  SpineExample
//
//  Created by 钟振华 on 2019/9/9.
//  Copyright © 2019 chung. All rights reserved.
//

#import "SpineAnimation.h"

@interface SpineAnimation ()

@property (nonatomic, assign) BOOL isWalking;

@end

@implementation SpineAnimation

+ (CCScene*)scene {
    CCScene *scene = [CCScene node];
    [scene addChild:[SpineAnimation node]];
    return scene;
}

- (id)init {
    self = [super init];
    if (!self) return nil;

    self.isWalking = true;

    skeletonNode = [SkeletonAnimation skeletonWithFile:@"spineboy-ess.json" atlasFile:@"spineboy.atlas" scale:0.4];
    [skeletonNode setAnimationForTrack:0 name:@"walk" loop:YES];

    CGSize windowSize = [[CCDirector sharedDirector] viewSize];
    [skeletonNode setPosition:ccp(windowSize.width / 2, 20)];
    [self addChild:skeletonNode];

    self.userInteractionEnabled = YES;

    self.contentSize = windowSize;

    return self;
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {

    // TODO: No skin resources were found
    [skeletonNode setSkin:@"spineboy"];
    if (self.isWalking) {
        [skeletonNode addAnimationForTrack:0 name:@"run" loop:YES afterDelay:0];
        self.isWalking = false;
    } else {
        [skeletonNode addAnimationForTrack:0 name:@"walk" loop:YES afterDelay:0];
        self.isWalking = true;
    }
}

@end
