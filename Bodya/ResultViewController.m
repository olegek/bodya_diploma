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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Result"];
    self.resultTextView.text = resultHash;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
