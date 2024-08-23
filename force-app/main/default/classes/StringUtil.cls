public class StringUtil {
    public String reverseAndCapitalizeFirstLetter(String str1) {
        str1 = str1.reverse().toLowerCase();
        str1 = str1.substring(0, 1).toUpperCase() + str1.substring(1);
        System.debug(str1);
        return str1;
    }
}