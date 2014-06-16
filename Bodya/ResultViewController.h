//
//  ResultViewController.h
//  Bodya
//
//  Created by Hedgehog on 12.06.14.
//  Copyright (c) 2014 Work. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultViewController : UIViewController


@property (strong, nonatomic) NSString *hashMethod;
- (id)initWithResult:(NSString *)result;

@end
