#line 1 "/Users/mohamedtanbakji/Desktop/JBDetection/JBDetection/JBDetection.xm"
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>






#include <objc/message.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__attribute__((unused)) static void _logos_register_hook$(Class _class, SEL _cmd, IMP _new, IMP *_old) {
unsigned int _count, _i;
Class _searchedClass = _class;
Method *_methods;
while (_searchedClass) {
_methods = class_copyMethodList(_searchedClass, &_count);
for (_i = 0; _i < _count; _i++) {
if (method_getName(_methods[_i]) == _cmd) {
if (_class == _searchedClass) {
*_old = method_getImplementation(_methods[_i]);
*_old = method_setImplementation(_methods[_i], _new);
} else {
class_addMethod(_class, _cmd, _new, method_getTypeEncoding(_methods[_i]));
}
free(_methods);
return;
}
}
free(_methods);
_searchedClass = class_getSuperclass(_searchedClass);
}
}
@class ViewController; 
static Class _logos_superclass$_ungrouped$ViewController; static void (*_logos_orig$_ungrouped$ViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST, SEL);

#line 8 "/Users/mohamedtanbakji/Desktop/JBDetection/JBDetection/JBDetection.xm"

static void _logos_method$_ungrouped$ViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {



NSString *filePath = @"/Applications/Cydia.app";
if ([[NSFileManager defaultManager] fileExistsAtPath:filePath])
{
    
    UIAlertView *jbAlert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Sorry, This Device is jailbroken :(" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
[jbAlert show];
}
    
else {
UIAlertView *Alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"This Device is not jailbroken, Enjoy!" delegate:self cancelButtonTitle:@"Thanks" otherButtonTitles:nil];
    

    [Alert show];


    }
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ViewController = objc_getClass("ViewController"); _logos_superclass$_ungrouped$ViewController = class_getSuperclass(_logos_class$_ungrouped$ViewController); { _logos_register_hook$(_logos_class$_ungrouped$ViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$ViewController$viewDidLoad, (IMP *)&_logos_orig$_ungrouped$ViewController$viewDidLoad);}} }
#line 31 "/Users/mohamedtanbakji/Desktop/JBDetection/JBDetection/JBDetection.xm"
