//
//  SpineAnimation.h
//  SpineExample
//
//  Created by 钟振华 on 2019/9/9.
//  Copyright © 2019 chung. All rights reserved.
//

#import "cocos2d.h"
#import <spine/spine-cocos2d-objc.h>

@interface SpineAnimation : CCNode {
    SkeletonAnimation *skeletonNode;
}

+ (CCScene*) scene;

@end
