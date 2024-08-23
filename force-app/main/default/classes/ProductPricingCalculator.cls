public class ProductPricingCalculator {
    public Decimal calculateProductPrice(Decimal cost, String category) {
        Decimal profitMargin = 0.00;
        if(category == 'outdoor' && cost > 100){
            profitMargin = cost / (1 -.20);
        }else if (category != 'outdoor'){
            profitMargin = cost / (1 -.10);
        } else {
            profitMargin = cost / (1 -.15);
        }
        return profitMargin;
    }
}