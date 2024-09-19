public class MathExam {
    public Decimal calculateAverage(List<Integer> num) {
        if(num == null || num.isEmpty()) {
            return 0;
        }

        Decimal sum = 0;
        for(Integer i : num) {
            sum += i;
        }
        return sum/num.size();
    }
}