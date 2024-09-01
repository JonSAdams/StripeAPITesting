public class NumberPatternGenerator {
    public List<String> generateNumberPattern(Integer n) {

        List<String> numberList = new List<String>();
        for(Integer i=1; i<=n; i++) {
            String s = '';
            String value = String.valueOf(i);
            for(Integer j=0; j<i; j++) {
                s += value;
            } 
            numberList.add(s);
        }     
    
        return numberList;
    }   
}