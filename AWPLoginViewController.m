#import "AWPLoginViewController.h"

@interface AWPLoginViewController ()

@end

@implementation AWPLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)processFieldentries
{
    // get username and password info
    
NSString *username = self.usernameField.text;
NSString *password = self.passwordField.text;
NSString *noUserNameText = @"username";
NSString *noPasswordText = @"password";
NSString *errorText = @"No ";
NSString *errorTextJoin = @" or ";
NSString *errorTextEnding = @" entered";
BOOL textError = NO;
    
if (password.length == 0)
{
    [self.passwordField becomeFirstResponder];
}
if (username.length == 0)
{
    [self.usernameField becomeFirstResponder];
}
    
if ([username length] == 0)
{
    textError = YES;
    errorText = [errorText stringByAppendingString:noUserNameText];
}

    if ([password length] == 0)
    {
        textError = YES;
        if ([username length] == 0) {
            errorText = [errorText stringByAppendingString:errorTextJoin];
        }
        errorText = [errorText stringByAppendingString:noPasswordText];
    }
    if (textError) {
        return;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
