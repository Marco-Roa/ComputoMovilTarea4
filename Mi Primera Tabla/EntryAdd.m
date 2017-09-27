//
//  EntryAdd.m
//  Mi Primera Tabla
//
//  Created by Marco Antonio Roa De La Cruz on 9/26/17.
//  Copyright © 2017 mroa. All rights reserved.
//

#import "EntryAdd.h"
#import "Home.h"

@interface EntryAdd ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UIButton *addButton;

@end

@implementation EntryAdd

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backButtonPress:(id)sender
{
    [self performSegueWithIdentifier:@"cancelSegue" sender:sender];
}



//Delegates
//-------------------------------------------------------------------------------
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([[segue identifier] isEqualToString:@"addSegue"])
    {
        //if you need to pass data to the next controller do it here
        
        Home *vc = [segue destinationViewController];
        
        
        vc.nameStringAdd = self.nameTextField.text;
        vc.ageStringAdd = self.ageTextField.text;
        
        vc.addFlag = @"1";
        
    }
}

@end
