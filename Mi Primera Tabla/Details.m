//
//  Details.m
//  Mi Primera Tabla
//
//  Created by Marco Antonio Roa De La Cruz on 9/25/17.
//  Copyright © 2017 wgdomenzain. All rights reserved.
//

#import "Details.h"

@interface Details ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UITextView *txtView;
@property (weak, nonatomic) IBOutlet UIButton *backButton;

@end

@implementation Details

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imgView.image = [UIImage imageNamed:self.imgString];
    self.nameLabel.text = self.labelString;
    self.txtView.text = self.txtString;
    // Do any additional setup after loading the view, typically from a nib.
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backButtonPress:(id)sender
{
    [self performSegueWithIdentifier:@"backSegue" sender:sender];
}

@end

