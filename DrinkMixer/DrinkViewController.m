//
//  DrinkViewController.m
//  DrinkMixer
//
//  Created by Lion User on 15/09/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DrinkViewController.h"
#import "DrinkConstants.h"

@interface DrinkViewController ()

@end

@implementation DrinkViewController
@synthesize nameLabel=nameLabel_, ingredientsTextView=ingredientsTextView_, directionsTextView=directionsTextView_, drink=drink_, scrollView=scrollView_;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)dealloc{
    [nameLabel_ release];
    [ingredientsTextView_ release];
    [directionsTextView_ release];
    [scrollView_ release];
    [super dealloc];
}
- (void)viewDidLoad
{
    
    //    backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    //    backView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"drinkBack.png"]];
    UIImageView *backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"drinkBack.png"]];
    [self.view addSubview:backgroundView];
    [self.view sendSubviewToBack:backgroundView];
    [backgroundView release];
    
    [super viewDidLoad];
    self.scrollView.contentSize= self.view.frame.size;
	// Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.nameLabel.text = [self.drink objectForKey:NAME_KEY];
    self.ingredientsTextView.text=[self.drink objectForKey:INGREDIENTS_KEY];
    self.directionsTextView.text=[self.drink objectForKey:DIRECTIONS_KEY];
    self.ingredientsTextView.backgroundColor=[UIColor clearColor];
    self.directionsTextView.backgroundColor=[UIColor clearColor];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end