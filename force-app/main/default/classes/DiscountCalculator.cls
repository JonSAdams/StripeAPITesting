public class DiscountCalculator {
    public Decimal calculateDiscount(Decimal totalAmount) {
        if (totalAmount > 1000) {
			totalAmount = totalAmount* .90;
        } else if (totalAmount < 1000) {
			totalAmount = totalAmount* .95;
        }
        
    	return totalAmount;
    }
}