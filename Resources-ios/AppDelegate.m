
#import "cocos2d.h"
#import "AppDelegate.h"
#import "SpineAnimation.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [CCFileUtils sharedFileUtils].searchPath =
    [NSArray arrayWithObjects:
     [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Images"],
     [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Fonts"],
     [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Resources-shared"],
     [[NSBundle mainBundle] resourcePath],
     nil];

    [self setupCocos2dWithOptions:@{
            CCSetupDepthFormat: @GL_DEPTH24_STENCIL8,
              CCSetupShowDebugStats: @YES,
        }];

    [[CCDirector sharedDirector] runWithScene:[SpineAnimation scene]];

    return YES;
}

@end
