//
//  ViewController.h
//  Mi Primera Tabla
//
//  Created by Walter Gonzalez Domenzain on 20/09/17.
//  Copyright © 2017 wgdomenzain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *tblMain;
- (IBAction)btnAddPressed:(id)sender;

@property (weak, nonatomic) NSString *nameStringAdd;
@property (weak, nonatomic) NSString *ageStringAdd;
@property (weak, nonatomic) NSString *addFlag;

@end

