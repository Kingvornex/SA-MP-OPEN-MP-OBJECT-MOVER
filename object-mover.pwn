#include <open.mp>
#include <streamer>

#define MAP_FILE "ACNR/ACNR-DEBUG/MAPs.txt"

//new Objects[5000];

new Float:xd = -2185.21847, Float:yd = 2243.4699, Float:zd = -323.00;
/*
stock DiffCalculator()
{
	// new x y z : 1256.5142, 731.5490, 9.7948
	// old x y z : 3451.73267, -1511.92090, 333.000
	Float:xd = 2934.4607 - 3045.74414, yd = 2107.0022 + 1100.1137, zd = 14.5359 - 330.54520;
}
*/
stock MoveTheObject(modelid, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
	new Float:xx, Float:yy, Float:zz;
	xx = x + xd, yy = y + yd, zz = z + zd;
	new stringe[300];
	format(stringe, sizeof(stringe), " CreateDynamicObject(%d, %f, %f, %f, %f, %f, %f);", modelid, xx, yy, zz, rx, ry, rz);
	SaveDebug(MAP_FILE, stringe);
}

stock SaveDebug(const filename[], const stringl[])
{
    new File:handle;

    if (fexist(filename))
    {
        // File exists, open in append mode
        handle = fopen(filename, io_append);
    }
    else
    {
        // File does not exist, create it
        handle = fopen(filename, io_write);
        printf("%s did not exist. Got Created", filename);
    }

    // Check if file is open
    if (handle)
    {
        // Append the string
        fwrite(handle, "\r\n");
        fwrite(handle, stringl);

        // Close the file
        fclose(handle);
    }
    else
    {
        // Error
        print("Failed to open or create file.");
    }
}

public OnFilterScriptInit()
{
	 if (fcreatedir("ACNR/ACNR-DEBUG")) { printf("The directory \"ACNR/ACNR-DEBUG\" created successfully."); }
	 else { print("Failed to create the directory \"ACNR/ACNR-DEBUG\""); }
	
     MoveTheObject(19529, 3451.73267, -1511.92090, 333.00000,   0.00000, 0.00000, 0.00000);
     MoveTheObject(11502, 3429.12622, -1554.63867, 332.98407,   0.00000, 0.00000, 0.00000);
     MoveTheObject(12991, 3456.07935, -1543.28284, 331.48029,   0.00000, 0.00000, 68.00000);
     MoveTheObject(5520, 3459.64233, -1559.84705, 337.99191,   0.00000, 0.00000, 178.00000);
     MoveTheObject(5836, 3395.68359, -1569.20007, 344.97101,   0.00000, 0.00000, 0.00000);
     MoveTheObject(16053, 3491.99121, -1538.27246, 336.47739,   0.00000, 0.00000, 17.00000);
     MoveTheObject(5715, 3419.09717, -1515.61536, 342.48199,   0.00000, 0.00000, 0.00000);
     MoveTheObject(7600, 3470.97144, -1496.06128, 333.95459,   0.00000, 0.00000, 77.00000);
     MoveTheObject(16613, 3500.50806, -1559.16321, 332.97400,   0.00000, 0.00000, 92.00000);
     MoveTheObject(13666, 3502.91553, -1499.96008, 337.98141,   0.00000, 0.00000, 0.00000);
     MoveTheObject(9361, 3403.47852, -1469.82996, 335.45551,   0.00000, 0.00000, 171.00000);
     MoveTheObject(3415, 3429.93481, -1471.70557, 332.98889,   0.00000, 0.00000, 186.00000);
     MoveTheObject(3418, 3448.53857, -1463.37939, 334.97672,   0.00000, 0.00000, 0.00000);
     MoveTheObject(16325, 3459.47388, -1516.52930, 333.51511,   0.00000, 0.00000, 84.00000);
     MoveTheObject(17050, 3510.28003, -1452.89294, 332.99161,   0.00000, 0.00000, 0.00000);
     MoveTheObject(17050, 3393.06104, -1453.25671, 332.98511,   0.00000, 0.00000, 205.00000);
     MoveTheObject(13643, 3489.12012, -1475.45020, 335.02081,   0.00000, 0.00000, 265.00000);
     MoveTheObject(19633, 3403.77954, -1519.33325, 332.98859,   0.00000, 0.00000, 0.00000);
     MoveTheObject(10828, 3391.63330, -1473.20898, 344.98251,   0.00000, 0.00000, 89.00000);
     MoveTheObject(10828, 3391.02222, -1508.20898, 344.98251,   0.00000, 0.00000, 89.00000);
     MoveTheObject(10828, 3390.45020, -1543.20898, 344.98251,   0.00000, 0.00000, 89.00000);
     MoveTheObject(10828, 3418.37085, -1573.36719, 345.12619,   0.00000, 0.00000, 0.00000);
     MoveTheObject(10828, 3453.37085, -1573.36719, 345.12619,   0.00000, 0.00000, 0.00000);
     MoveTheObject(10828, 3411.88916, -1450.43811, 344.98709,   0.00000, 0.00000, 0.00000);
     MoveTheObject(10828, 3446.88916, -1450.43811, 344.98709,   0.00000, 0.00000, 0.00000);
     MoveTheObject(10828, 3481.88916, -1450.43811, 344.98709,   0.00000, 0.00000, 0.00000);
     MoveTheObject(10828, 3512.20581, -1472.85620, 344.97659,   0.00000, 0.00000, 91.00000);
     MoveTheObject(10828, 3512.80371, -1507.85620, 344.97659,   0.00000, 0.00000, 91.00000);
     MoveTheObject(10828, 3513.16577, -1528.05823, 344.97659,   0.00000, 0.00000, 91.00000);
     MoveTheObject(3637, 3502.00513, -1457.21960, 340.92899,   0.00000, 0.00000, 178.00000);
     MoveTheObject(18786, 3468.10474, -1480.99695, 334.93231,   0.00000, 0.00000, 84.00000);
     MoveTheObject(19588, 3465.23999, -1497.43701, 337.40820,   0.00000, 0.00000, 89.00000);
     MoveTheObject(10828, 3472.37085, -1573.36719, 345.12619,   0.00000, 0.00000, 0.00000);
     MoveTheObject(11353, 3436.98022, -1493.10315, 336.98318,   0.00000, 0.00000, 91.00000);

}