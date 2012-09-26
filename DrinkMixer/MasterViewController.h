//
//  MasterViewController.h
//  DrinkMixer
//
//  Created by Lion User on 14/09/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController{
    
    NSMutableArray* drinks_;
    UIView *bgView;
}
@property(nonatomic, retain) NSMutableArray* drinks;
@property (nonatomic, retain) UIView *bgView;



@property (strong, nonatomic) DetailViewController *detailViewController;

@end
