//
//  DetalleActividadesViewController.h
//  JARVIS2
//
//  Created by Antony on 14/06/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Actividad.h"
#import <CoreData/CoreData.h>

@interface DetalleActividadesViewController : UIViewController
@property (strong, nonatomic) IBOutlet Actividad *actividad;
- (IBAction)guardar:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *detalleActividad;

@end
