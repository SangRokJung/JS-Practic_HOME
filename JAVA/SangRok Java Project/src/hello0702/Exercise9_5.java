package hello0702;

public class Exercise9_5 {
    public static String delChar(String src, String delCh){
        StringBuffer sb = new StringBuffer(src.length());

        for(int i=0; i<src.length(); i++){
            char ch = src.charAt(i);

            if(delCh.indexOf(ch) == -1){
                
            }
        }


        return sb.toString();
    }


    public static void main(String[] args) {
        
    }
}
