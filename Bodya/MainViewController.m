//
//  MainViewController.m
//  Bodya
//
//  Created by Hedgehog on 12.06.14.
//  Copyright (c) 2014 Work. All rights reserved.
//

#import "MainViewController.h"
#import "ResultViewController.h"
#import "NSString+Hash.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UITextView *inputText;

- (IBAction)md2:(id)sender;
- (IBAction)md4:(id)sender;
- (IBAction)md5:(id)sender;
- (IBAction)sha1:(id)sender;

@end

@implementation MainViewController

#pragma mark - UITextViewDelegate

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

-(UIStatusBarStyle) preferredStatusBarStyle {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    return UIStatusBarStyleLightContent;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Hash app"];
    self.inputText.delegate = self;
    
    
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navbarBG"] forBarMetrics:UIBarMetricsDefault ];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    NSDictionary *navbarTitleProperties = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"AvenirNext-DemiBold" size:17.0f], NSFontAttributeName, [UIColor whiteColor], NSForegroundColorAttributeName, nil];
    [[UINavigationBar appearance] setTitleTextAttributes: navbarTitleProperties];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)md2:(id)sender
{
    [self.view endEditing:YES];
    NSString *md2 = [self.inputText.text stringByHashingWithMD2UsingEncoding:NSUTF8StringEncoding];
    ResultViewController *res = [[ResultViewController alloc] initWithResult:md2];
    res.hashMethod = @"MD2";
    [self.navigationController pushViewController:res animated:YES];
}

- (IBAction)md4:(id)sender
{
    [self.view endEditing:YES];
    NSString *md4 = [self.inputText.text stringByHashingWithMD4UsingEncoding:NSUTF8StringEncoding];
    ResultViewController *res = [[ResultViewController alloc] initWithResult:md4];
    res.hashMethod = @"MD4";

    [self.navigationController pushViewController:res animated:YES];
}

- (IBAction)md5:(id)sender
{
    NSString *input = self.inputText.text;
    [self.view endEditing:YES];
    ResultViewController *res = [[ResultViewController alloc] initWithResult:[input stringByHashingWithMD5UsingEncoding:NSUTF8StringEncoding]];
    res.hashMethod = @"MD5";
    [self.navigationController pushViewController:res animated:YES];
}

- (IBAction)sha1:(id)sender
{
    NSString *input = self.inputText.text;
    [self.view endEditing:YES];
    ResultViewController *res = [[ResultViewController alloc] initWithResult:[input stringByHashingWithSHA1UsingEncoding:NSUTF8StringEncoding]];
    res.hashMethod = @"SHA1";
    [self.navigationController pushViewController:res animated:YES];
}
@end
