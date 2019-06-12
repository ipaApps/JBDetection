#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


%config(generator=internal)

//If You Want Detect Another App Change This Header "ViewController"
%hook ViewController
- (void)viewDidLoad {


//You Can Put Any App Name Here, Example: "/Applications/Sileo.app"
NSString *filePath = @"/Applications/Cydia.app";
if ([[NSFileManager defaultManager] fileExistsAtPath:filePath])
{
    
    UIAlertView *jbAlert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Sorry, This Device is jailbroken :(" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
[jbAlert show];
}
    
else {
UIAlertView *Alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"This Device is not jailbroken, Enjoy!" delegate:self cancelButtonTitle:@"Thanks" otherButtonTitles:nil];
    
//For Hiding Alert in Unjailbroken Mode, Remove "[Alert show];"
    [Alert show];


     }
}

%end
