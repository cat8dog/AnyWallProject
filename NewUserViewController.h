#import <UIKit/UIKit.h>


@interface NewUserViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *passwordAgainField;
-(void) processFieldEntries;
-(void)newUserViewControllerDidSignUp;



@end
