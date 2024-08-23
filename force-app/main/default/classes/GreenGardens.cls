public class GreenGardens {
    public Decimal calculateWateringAmount(Decimal temp, Decimal humidity) {
        if(temp > 30 && humidity < 40)
        {
           return 1;
        } else {

            return 0.5;
        }

        }
    }
