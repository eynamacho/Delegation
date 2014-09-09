//
//  XYZViewController.m
//  Delegation
//
//  Created by Siti Azreena on 9/8/14.
//  Copyright (c) 2014 Brainstorm Technologies Sdn Bhd. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@interface UIColor()

@end

@implementation XYZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Background Color" message:@"Choose background color" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"Red",@"Green",@"Blue",@"Random",nil];
    
   //[alert show];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    switch (buttonIndex)
    {
        case 0:
        { NSLog(@"Cancel button clicked");
             self.view.backgroundColor = [UIColor clearColor];
           NSString *newMessage = @"You have no taste at all";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Background Color" message:newMessage delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"Red",@"Green", @"Blue",@"Random", nil];
            
            [alert show];            break;
        }
        case 1:
        {   NSLog(@"Red button clicked");
            self.view.backgroundColor = [UIColor redColor];
            NSString *newMessage = @"The background color now is Red";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Background Color" message:newMessage delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"Red",@"Green", @"Blue",@"Random", nil];
            
            [alert show];
            break; }
            
        case 2:
        {  NSLog(@"Green button clicked");
            self.view.backgroundColor = [UIColor greenColor];
            NSString *newMessage = @"The background color now is Green";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Background Color" message:newMessage delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"Red",@"Green", @"Blue",@"Random", nil];
            
            [alert show];
            break;
        }
      
        case 3:
        {NSLog(@"Blue button clicked");
            self.view.backgroundColor = [UIColor blueColor];
            NSString *newMessage = @"The background color now is Blue";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Background Color" message:newMessage delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"Red",@"Green", @"Blue",@"Random", nil];
            
            [alert show];
        break;
        }
            
        case 4:
        { NSLog(@"Random button clicked");
            NSArray *colors = [NSArray arrayWithObjects:[UIColor darkGrayColor],[UIColor redColor],[UIColor greenColor],[UIColor blueColor],[UIColor cyanColor],[UIColor yellowColor],[UIColor magentaColor], nil];
          NSInteger i;
           i = arc4random() % [colors count];
            self.view.backgroundColor = [colors objectAtIndex:i];
          
            NSString *newColor = [colors objectAtIndex:i];
    
         //   CGColorRef colorRef = self.CGColor;
           // NSString *colorString = [CIColor colorWithCGColor:colorRef].stringRepresentation;
            NSString *newMessage = [NSString stringWithFormat:@"Background color now is %@",newColor];
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Background Color" message:newMessage delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"Red",@"Green", @"Blue",@"Random", nil];
            
            [alert show];
            break;
        }
            // default:
         //   break;
    }
    
}

//-(void)alertViewCancel:(UIAlertView *)alertView
//{
  //  NSLog(@"You have no taste at all");
//}
-(void)willPresentAlertView:(UIAlertView *)alertView
{
    NSLog(@"I WILL COME SOON!");
}
-(void)didPresentAlertView:(UIAlertView *)alertView
{
    NSLog(@"I AM ALIVE");
}

//- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex

//-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex;

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createAlert:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Background Color" message:@"Choose background color" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"Red",@"Green",@"Blue",@"Random",nil];
    
    [alert show];
    
}
@end