#import "AppDelegate.h"

//#include "diablo.h"
//#include <cstring>

@interface AppDelegate ()

@end

@implementation SDLUIKitDelegate (extra)

+ (NSString *)getAppDelegateClassName {
    return @"AppDelegate";
}
@end

@implementation AppDelegate

//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    self.window = window;
//
//    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
//    UIViewController *rootViewController = [mainStoryboard instantiateInitialViewController];
//
//    window.rootViewController = rootViewController;
//    [window makeKeyAndVisible];
//
//    return YES;
//}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [super application:application didFinishLaunchingWithOptions:launchOptions];

    // Override point for customization after application launch.

    NSString *path = [NSBundle.mainBundle URLForResource:@"diabdat" withExtension:@"mpq"].URLByDeletingLastPathComponent.path;
//    strncpy(dvl::diabdat_mpq_path, path.UTF8String, path.length);

    return YES;
}


@end
