//
// ktCAM2
//

gap1 = 0.001;
gap2 = 0.002;

circle = 76;
panel_thick = 2;

A = 0;
B = 1;





difference()
{
    translate( [-35/2, -18-10, -20-10] ) cube( [35+25, 140, 35+10] );
    MAIN_CAM();
    //inner
    translate( [-13/2, -5, -14] ) cube( [13, 30, 15] );
    difference()
    {
        translate( [-14, 17, -27] ) cube( [34, 82, 40] );
        translate( [-10+13, 17, -27] ) rotate( [0, 30, 0] ) cube( [30, 82, 40] );
        translate( [-10, 17, -55] ) rotate( [0, 30-90, 0] ) cube( [30, 82, 40] );
    }
    //outer
    translate( [-8, -30, -50] ) rotate( [0, 30, 0] ) cube( [50, 180, 100] );
    translate( [-10, -30, -80] ) rotate( [0, 30-90, 0] ) cube( [50, 180, 100] );
    
    translate( [-20, -30, -50] ) cube( [50, 180, 50] );
    //translate( [0, -150, -80] ) rotate( [0, 0, 0] ) cube( [300, 300, 300] );
}





module MAIN_CAM()
{
    difference()
    {
        union()
        {
            sphere(r = 29/2);
            translate( [0, 0, 9] ) cylinder( 9, 22/2, 20.5/2 );
            translate( [0, -14.3, 0] ) rotate( [90, 0, 0] ) cylinder( 2, 3/2, 3/2, $fn=10 );
        }
        translate( [0, 0, -8-34/2] ) cube( [30, 30, 30], center=true);
    }
}