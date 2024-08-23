public class DivisibleClass {
    public Boolean isDivisibleBy2And7(Integer num) {
        Boolean divisibleBy2 = Math.mod(num, 2) == 0;
        Boolean divisibleBy7 = Math.mod(num, 7) == 0;
        
        System.debug('Number: ' + num);
        System.debug('Divisible by 2: ' + divisibleBy2);
        System.debug('Divisible by 7: ' + divisibleBy7);
        
        if (divisibleBy2 && divisibleBy7) {
            return true;
        } else if (divisibleBy2 && !divisibleBy7) {
            return false;
        } else if (!divisibleBy2 && divisibleBy7) {
            return false;
        }
        
        // This covers the case where it's not divisible by either 2 or 7
        return false;
    }
}