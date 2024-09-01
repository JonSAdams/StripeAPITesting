public class ReverseNumberPatternGenerator {
    public List<String> generateReverseNumberPattern(Integer n) {
        List<String> reverseNumber = new List<String>();
        for(Integer i = n; i > 0; i--) {
            String addString = '';
            for(Integer j = 0; j < i; j++) {
                addString += String.valueOf(i);
            }
            reverseNumber.add(addString);
        }
        return reverseNumber;
    }
}