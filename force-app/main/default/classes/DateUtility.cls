public class DateUtility {
    public Boolean isMoreThan90DaysFromGivenDate(Date inputDate) {
        Integer days = Math.abs(Date.today().daysBetween(inputDate));

        if (days > 90) {
            return true;
        } else {
            return false;
        }
    }
}