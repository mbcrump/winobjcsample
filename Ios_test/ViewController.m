

#import "ViewController.h"

@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
	[[self view] setBackgroundColor:[UIColor colorWithRed:1.0f green:0.96f blue:0.33f alpha:1.0]];

	UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 400, 30)];
    
    label.text = @"Hello WinObjC, from @mbcrump";
        
    label.textColor = [UIColor blackColor];    
   
   [self.view addSubview:label]; 
	
}

-(void)viewDidAppear:(BOOL)animated{

   [super viewDidAppear:animated];
   [self sendErrorMessage];
   
   }

- (void)sendErrorMessage
{
    UIAlertView *alert = [[UIAlertView alloc]
                      initWithTitle:@"Title"
                      message:@"message"
                      delegate:nil cancelButtonTitle:
                      @"OK"
                      otherButtonTitles:nil];
[alert show];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
