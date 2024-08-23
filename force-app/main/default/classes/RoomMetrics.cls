public class RoomMetrics {
    public Decimal calculateArea(Decimal width, Decimal height) {
        Decimal area = width * height;
        return area;
    }
    

    public Decimal calculatePerimeter(Decimal width, Decimal height) {
        Decimal perimeter = (width + height) * 2;
        return perimeter;
    }


    public Decimal compareAreas(Decimal area1, Decimal area2) {
            if(area1 > area2) {
                return area1;
            } else {
                return area2;
            }

    }
}