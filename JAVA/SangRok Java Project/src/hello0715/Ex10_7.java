package hello0715;

import java.text.*;

public class Ex10_7 {
    public static void main(String[] args) {
        DecimalFormat df = new DecimalFormat("#,###.##");
        DecimalFormat df2 = new DecimalFormat("#.###E0");

        try{
            Number num = df.parse("1,234,567.89");
            System.out.print("1,234,567.89" + " |문자 => 숫자| ");

            double d = num.doubleValue(); // d=1234567.89
            System.out.print(d + " |숫자  => 문자| ");

            System.out.println(df2.format(num));
        }
        catch(Exception e){

        }
        
    }
}
