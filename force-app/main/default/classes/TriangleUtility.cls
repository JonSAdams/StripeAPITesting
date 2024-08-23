public class TriangleUtility {
    public Double calculateTriangleArea(Double base, Double height) {

        if (base == null) {
            return 0.00;
        }
        
        if (base < 0 || height < 0) {
            return 0.00;
        }
        Double result = 0.5 * base * height;
        return result;
    }
}