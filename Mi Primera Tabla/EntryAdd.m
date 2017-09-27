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



-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image=[info objectForKey:UIImagePickerControllerEditedImage];
    self.imageView.image=image;

    [self dismissModalViewControllerAnimated:YES];
}

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

- (IBAction)addImgButtonPress:(id)sender
{
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {

        UIImagePickerController *imagePickController=[[UIImagePickerController alloc]init];
        imagePickController.sourceType=UIImagePickerControllerSourceTypeCamera;
        imagePickController.delegate=self;
        imagePickController.allowsEditing=TRUE;
        [self presentModalViewController:imagePickController animated:YES];
    }
    else if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary])
    {
        UIImagePickerController *imagePickController=[[UIImagePickerController alloc]init];
        imagePickController.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
        imagePickController.delegate=self;
        imagePickController.allowsEditing=TRUE;
        [self presentModalViewController:imagePickController animated:YES];
     
        
    }
   
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
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
        
        if([self.nameTextField.text isEqualToString:@""] ||
           [self.ageTextField.text isEqualToString:@""] ||
           self.imageView.image == NULL)
        {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                            message:@"No se realizo el registro. No se llenaron todos los campos."
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else
        {
            vc.nameStringAdd = self.nameTextField.text;
            vc.ageStringAdd = self.ageTextField.text;
            vc.imageAdd = self.imageView.image;
        
            vc.addFlag = @"1";
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Éxito"
                                                            message:@"El registro se agrego correctamente."
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        
    }
}

@end
