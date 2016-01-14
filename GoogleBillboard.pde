public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";
String tenDigit;
double tenDigitNum;
public void setup()
{
    noLoop();
}
public void draw()
{
	//not needed for this assignment
	for(int i = 0; i < e.length()-9; i++)
	{
		tenDigit = e.substring(i, i+10);
		tenDigitNum = Double.parseDouble(tenDigit);
		if(isPrime(tenDigitNum) == true)
		{
			System.out.println(tenDigitNum);
			//break;
		}
	}
}
public boolean isPrime(double dNum)
{
    //to be finished later
    if(dNum <= 1)
    	return false;
    else
    {
	    for(int i = 2; i <= Math.sqrt(dNum); i++)
			if(dNum%i == 0)
				return false;
	}
    return true;
}
