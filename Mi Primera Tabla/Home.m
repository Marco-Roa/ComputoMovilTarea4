//
//  ViewController.m
//  Mi Primera Tabla
//
//  Created by Walter Gonzalez Domenzain on 20/09/17.
//  Copyright © 2017 wgdomenzain. All rights reserved.
//

#import "Home.h"
#import "Details.h"
#import "cellMainTable.h"
//#import "Details.m"

@interface Home ()

/*
@property NSMutableArray *userNames;
@property NSMutableArray *userAges;
@property NSMutableArray *userImages;
@property NSMutableArray *userBio;
 
 */

@end



@implementation Home

NSInteger imageIndex = 0;
bool isInit = false;

NSMutableArray *userNames;
NSMutableArray *userAges;
NSMutableArray *userImages;
NSMutableArray *userBio;

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    if(!isInit)
    {
        //Starting point
        [self initController];
    }
    else // if not init, just add to existing structure
    {
        if([_addFlag isEqualToString:@"1"] )
        {
            if(![_nameStringAdd isEqualToString:@""] &&
               ![_ageStringAdd isEqualToString:@""])
            [userNames addObject:_nameStringAdd];
            [userAges addObject:_ageStringAdd];
            //[userImages addObject:@"jon.jpg"];
            [userImages addObject:_imageAdd];
            [userBio addObject:@"NO BIO"];
            
            [self.tblMain reloadData];
            
            _addFlag = @"";
            _nameStringAdd = @"";
            _ageStringAdd = @"";
            
            
        }
    }
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
- (void)initController {
    _addFlag = @"";
    
    userNames  = [[NSMutableArray alloc] initWithObjects: @"Tyrion Lannister", @"Daenerys Targaryen", @"Jon Snow", @"Arya Stark", @"Cersei Lannister", nil];
    
    userAges  = [[NSMutableArray alloc] initWithObjects: @"38", @"22", @"25", @"16", @"42", nil];

    userImages = [[NSMutableArray alloc] initWithObjects: @"tyrion.jpg", @"daenerys.jpeg", @"jon.jpg", @"arya.jpg", @"cersei.jpg", nil];
    
    userBio = [[NSMutableArray alloc] initWithObjects:
                    @"Tyrion Lannister is the youngest son of Joanna Lannister and Lord Tywin Lannister. Tywin is the head of House Lannister, the richest man in the Seven Kingdoms and Lord Paramount of the Westerlands. The Westerlands are one of the constituent regions of the Seven Kingdoms and House Lannister of Casterly Rock is one of the Great Houses of the realm.\n\nHe is the younger brother of Jaime and Cersei Lannister. His mother Joanna Lannister died giving birth to him. His father and sister blame Tyrion for the death.He is a dwarf, causing him problems and persecution. His size has led him to being referred to derisively by various names, such as \"The Imp\" and \"The Halfman\". \nThis is mitigated by his intellect and his family's wealth and power. Had an infant with dwarfism like Tyrion been born a commoner, he'd have simply been left out in the woods to die. However, Tyrion was born into a powerful noble House, and was therefore spared. Even though his father doesn't think much of him, he has had the benefits of being raised with wealth and education, and is expected to lead his life as a credit to the Lannister name.\n\nHe is committed to the good of both his House and, since Cersei married King Robert Baratheon, his family's continued hold on the throne.",
                    @"Daenerys is the only daughter and youngest child of King Aerys II Targaryen, the \"Mad King\", and his sister-wife, Rhaella. Her father died during the Sack of King's Landing, before she was even born. The usurper Robert Baratheon installed himself as king, having defeated Aerys in the conquest known as Robert's Rebellion. Her pregnant mother and brother Viserys, fled to the island of Dragonstone, the ancestral home of House Targaryen, to escape Robert. Daenerys's brother Rhaegar Targaryen was killed in the war by Robert. The forces of House Lannister murdered Rhaegar's wife, Elia Martell, and their children, Rhaenys and Aegon, during the Sack of King's Landing.\n\nBut unbeknownst to Daenerys and the rest of her family, her oldest brother Rhaegar had another son by Lyanna Stark, who died shortly after giving birth to him. In her final moments, she revealed the true name of their son to her brother Eddard, who passed the boy off as his bastard son, Jon Snow, and raised him in Winterfell. Jon initially joined the Night's Watch but later became the King in the North.\n\nOn the night Daenerys was born on Dragonstone, a vast storm raged. For this reason, she is sometimes called \"Daenerys Stormborn\". Her mother died soon after she was born, leaving her an orphan.\n\nAs a baby, she was taken into exile in the Free Cities with her brother, Viserys, by loyal retainers, among them Ser Willem Darry.\n\nAfter years spent fruitlessly trying to raise support to retake the Iron Throne, Viserys and Daenerys were given sanctuary by Magister Illyrio Mopatis in the Free City of Pentos. She dreams of finding a peaceful home and a place to belong. She lives in constant fear of Viserys, who hits her when his temper is risen (in his words, whenever she \"wakes the dragon\"). Living under Viserys's domination has left her meek and malleable.",
                    @"Jon Snow, born Aegon Targaryen, is the son of Lyanna Stark and Rhaegar Targaryen, the late Prince of Dragonstone. From infancy, Jon is presented as the bastard son of Lord Eddard Stark, Lyanna's brother, and raised by Eddard alongside his lawful children at Winterfell but his true parentage is kept secret from everyone, including Jon himself. In order to escape his bastard status, Jon joins the Night's Watch and is eventually chosen as Lord Commander. However, he is later murdered in a mutiny and resurrected by the Red Priestess Melisandre. Freed from his Night's Watch vows, Jon joins his cousin, Sansa Stark, in building an army and together they retake Winterfell from House Bolton, restoring House Stark's dominion over the North with Jon being declared the new King in the North. However, after successfully capturing a wight and presenting it to the Lannisters as proof that the Army of the Dead are real, Jon pledges himself and his army to Daenerys Targaryen, Rhaegar's sister, and steps down as King of the North.",
                    @"Arya Stark is the youngest daughter and third child of Lady Catelyn and Lord Eddard Stark. Eddard was the head of House Stark and Lord Paramount of the North. The North is one of the constituent regions of the Seven Kingdoms and House Stark is one of the Great Houses of the realm. House Stark rules the region from their seat of Winterfell and Eddard also holds the title Lord of Winterfell. He is also the Warden of the North to King Robert Baratheon.\n\nArya was born and raised at Winterfell. She has an older sister, Sansa Stark. She also has an older brother, Robb, two younger brothers, Bran and Rickon and a \"bastard half-brother\", Jon Snow.\n\nArya rejects the notion that she must become a lady and marry for influence and power, instead she believes she can forge her own destiny. She is fascinated by warfare and training in the use of arms, and is bored by embroidery and other \"lady-like\" pursuits. She takes after her father and has a quarrelsome relationship with her sister Sansa, due to their contrasting interests and personalities. She is close to her \"half-brother\" Jon, who is also something of an outcast.",
                    @"Cersei is the only daughter and eldest child of Lord Tywin Lannister and his wife Joanna Lannister, who was also his cousin. Tywin is the head of House Lannister, the richest man in the Seven Kingdoms and Lord Paramount of the Westerlands. The Westerlands are one of the constituent regions of the Seven Kingdoms and House Lannister is one of the Great Houses of the realm. Cersei is the elder twin of Ser Jaime Lannister and the elder sister of Tyrion Lannister. She was raised in privilege in the family seat of Casterly Rock.She is noted for her great beauty.\n\nCersei's mother died when she was four years old, after giving birth to her younger brother Tyrion. Like her father, Cersei has always blamed Tyrion for her mother's death and deeply resents that her mother died so that Tyrion would be brought into the world.As for Cersei's father Tywin, he was constantly away from home during her childhood and teenage years, serving as Hand of the King at the capital, with only infrequent visits back to his seat at Casterly Rock. Coupled with the death of her mother, this meant that Cersei and her two brothers were primarily raised by servants attached to House Lannister. She began an incestuous relationship with Jaime in her youth which has continued despite her marriage.While Cersei has had other partners, Jaime has always kept himself strictly for her.\n\nWhen she was about fifteen, Cersei and her friend Melara visited Maggy, a woods witch and reputed fortune teller dwelling in a hut deep in a forest close to Casterly Rock. Melara was reluctant, but Cersei convinced her to go. After rudely awakening her and insisting on having her future foretold, Maggy tasted a drop of her blood and revealed to Cersei she wouldn't marry \"the Prince\" but \"the King\", and while the king would have twenty children, she would bear only three children who will wear golden crowns as well as golden shrouds. Finally, she revealed to Cersei that although she would indeed be Queen, she would be cast down by another, younger and more beautiful queen.\n\n", nil];
    
    isInit = true;
}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return userNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellMainTable *cell = (cellMainTable *)[tableView dequeueReusableCellWithIdentifier:@"cellMainTable"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellMainTable" bundle:nil] forCellReuseIdentifier:@"cellMainTable"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellMainTable"];
    }
    //Fill cell with info from arrays
    cell.lblName.text       = userNames[indexPath.row];
    cell.lblAge.text        = userAges[indexPath.row];
    if([userImages[indexPath.row] isKindOfClass:[UIImage class]])
    {
        cell.imgUser.image = userImages[indexPath.row];
    }
    else
    {
        cell.imgUser.image      = [UIImage imageNamed:userImages[indexPath.row]];
    }
    
    return cell;
}
//-------------------------------------------------------------------------------

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    imageIndex = indexPath.row;
    
    [self performSegueWithIdentifier:@"detailSegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   
    if ([[segue identifier] isEqualToString:@"detailSegue"])
    {
        //if you need to pass data to the next controller do it here
        
        Details *vc = [segue destinationViewController];
    
        /*
        
        vc.imgView.image = [UIImage imageNamed:self.userImages[imageIndex]];
        vc.nameLabel.text = self.userNames[imageIndex];
        vc.txtView.text = @"TEST STRING";
        
         */
        
        vc.labelString = userNames[imageIndex];
        
        if([userImages[imageIndex] isKindOfClass:[UIImage class]])
        {
            vc.imgString = @"";
            vc.imgObj = userImages[imageIndex];
        }
        else
        {
            vc.imgString = userImages[imageIndex];
            vc.imgObj = NULL;
        }
        
        
        vc.txtString = userBio[imageIndex];
    }
}

/**********************************************************************************************/
#pragma mark - Action methods
/**********************************************************************************************/
- (IBAction)btnAddPressed:(id)sender {
    
     [self performSegueWithIdentifier:@"addEntrySegue" sender:self];
    
}


@end
