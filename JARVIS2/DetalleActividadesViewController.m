//
//  DetalleActividadesViewController.m
//  JARVIS2
//
//  Created by Antony on 14/06/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import "DetalleActividadesViewController.h" 

@interface DetalleActividadesViewController ()

@end

@implementation DetalleActividadesViewController

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
    // Do any additional setup after loading the view from its nib.
    Actividad *newManagedObject = self.actividad;
    self.detalleActividad.text = newManagedObject.descripcion;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guardar:(id)sender {
    AppDelegate *appDelegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
    Actividad *newManagedObject = self.actividad;
    [newManagedObject setValue:self.detalleActividad.text forKey:@"descripcion"];
    [appDelegate saveContext];
}
@end
