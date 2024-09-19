public class FamilyBudget {
    private List<Decimal> expenses = new List<Decimal>();

    public Boolean withinBudget(Decimal budget) {
        if(totalExpenses() <= budget) {
            return true;
        } else {
            return false;
        }
    }

    public void addExpense(Decimal num) {
        expenses.add(num);

    }

    public Decimal totalExpenses() {
        Decimal sum = 0;
        for(Decimal expense : expenses){
            sum += expense;
        }
        return sum;
    }
}