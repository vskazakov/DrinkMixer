//
//  DrinkViewController.h
//  DrinkMixer
//
//  Created by Lion User on 15/09/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrinkViewController : UIViewController{
    @private 
    UILabel *nameTLabel_;
    UITextView *ingredientsTextView_;
    UITextView *directionsTextView_;
    NSDictionary *drink_;
    UIScrollView *scrollView_;
    
}

@property (nonatomic, retain) IBOutlet UILabel  *nameLabel;
@property (nonatomic, retain) IBOutlet UITextView *ingredientsTextView;
@property (nonatomic, retain) IBOutlet UITextView *directionsTextView;
@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) NSDictionary *drink;



@end
