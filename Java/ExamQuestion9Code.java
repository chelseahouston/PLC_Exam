/**
* Initialise a one dimensional array with numbers 1,2,3...
*
* @param ar = the array to initialise
* @return the last number assigned to the array + 1
*/
public static int init(int[] ar)
{
    int c = 1;

    int i; 
    for(i = 0; i < ar.length; i++ )
    {
        initCell(ar, c, i);
        c++;
    }
    
    return c;
}

public static void initCell(int[] ar, int c, int i)
{
    ar[i] = c;
}

public static void main(String[] args)
{
    int[] a = new int[5];
    init(a);
}
