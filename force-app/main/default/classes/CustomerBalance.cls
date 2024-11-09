public class CustomerBalance {
    public String customerId = '';
    public Decimal outstandingBalance = 0.0;

    public CustomerBalance(String customerId, Decimal outstandingBalance) {
        this.customerId = customerId;
        this.outstandingBalance = outstandingBalance;
    }
}