//
//  ActividadesViewController.m
//  JARVIS2
//
//  Created by Héctor Alonso Guzmán Gutiérrez on 31/05/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import "ActividadesViewController.h"
#import "UbicacionesViewController.h"
#import "DetalleActividadesViewController.h"

@interface ActividadesViewController ()

@end

@implementation ActividadesViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //TODO HEctor va a la BD
    //    return [[self.assetItem supportedPresets] count];
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
	//NSInteger row = indexPath.row;
	
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
	{
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
	
	cell.textLabel.text = @"Jacob";
    //NSLocalizedString([[self.assetItem supportedPresets] objectAtIndex:row], nil);
	
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 5;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"yeah";
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetalleActividadesViewController *detalleActividadesViewController = [[DetalleActividadesViewController alloc] initWithNibName:@"DetalleActividadesViewController" bundle:nil];
    [self.navigationController pushViewController:detalleActividadesViewController animated:YES];
    NSLog(@"Ha seleccionado un elemento de la lista detalleActividadesViewController");
    
}


@end
