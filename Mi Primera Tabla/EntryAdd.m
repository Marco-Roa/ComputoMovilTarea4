//
//  EntryAdd.m
//  Mi Primera Tabla
//
//  Created by Marco Antonio Roa De La Cruz on 9/26/17.
//  Copyright © 2017 mroa. All rights reserved.
//

#import "EntryAdd.h"

@interface EntryAdd ()


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

@end
