//
//  ResultViewController.m
//  Bodya
//
//  Created by Hedgehog on 12.06.14.
//  Copyright (c) 2014 Work. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController () {
    NSString *resultHash;
}
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;

@end

@implementation ResultViewController

- (id)initWithResult:(NSString *)result
{
    if (self = [super init]) {
        resultHash = result;
    }
    return self;
}
-(void) addLeftButtonToNavbar
{
    UIButton *right = [[UIButton alloc] init];
    right.bounds = CGRectMake( 0, 0, [UIImage imageNamed:@"back"].size.width, [UIImage imageNamed:@"back"].size.height);
    [right setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [right addTarget:self action:@selector(backButton) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *anotherButton = [[UIBarButtonItem alloc] initWithCustomView:right];
    self.navigationItem.leftBarButtonItem = anotherButton;
}
-(void) backButton{
    [self.navigationController popViewControllerAnimated:YES];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(UIStatusBarStyle) preferredStatusBarStyle {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    return UIStatusBarStyleLightContent;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:[NSString stringWithFormat:@"Result for %@", _hashMethod]];
    self.resultTextView.text = resultHash;
    
    
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navbarBG"] forBarMetrics:UIBarMetricsDefault ];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    NSDictionary *navbarTitleProperties = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"AvenirNext-DemiBold" size:17.0f], NSFontAttributeName, [UIColor whiteColor], NSForegroundColorAttributeName, nil];
    [[UINavigationBar appearance] setTitleTextAttributes: navbarTitleProperties];
    
    [self addLeftButtonToNavbar];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
