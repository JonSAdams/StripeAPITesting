public with sharing class GiftCardCalculator {
    public Decimal calculateGiftCard(Decimal purchaseAmount, String customerType) {
        Decimal giftCardAmount;

        if(customerType == 'Prime') {
            if(purchaseAmount > 500) {
                giftCardAmount = 100;
            } else {
                 giftCardAmount = 50;
            }
        } else {
            if(purchaseAmount > 300) {
                giftCardAmount = 50;
            } else {
                 giftCardAmount = 20;
            }
        }

        return giftCardAmount;
    }
        }
        
