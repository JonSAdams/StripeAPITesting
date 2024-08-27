public class PascalsTriangleGenerator {
    public List<List<Integer>> generatePascalsTriangle(Integer n) {
        List<List<Integer>> triangle = new List<List<Integer>>();
        
        for (Integer i = 0; i < n; i++) {
            List<Integer> row = new List<Integer>();
            row.add(1); // First element of each row is always 1
            
            for (Integer j = 1; j < i; j++) {
                Integer previousRowValue1 = triangle[i - 1][j - 1];
                Integer previousRowValue2 = triangle[i - 1][j];
                row.add(previousRowValue1 + previousRowValue2);
            }
            
            if (i > 0) {
                row.add(1);
            }
            
            triangle.add(row);
        }
        
        return triangle;
    }         
}
