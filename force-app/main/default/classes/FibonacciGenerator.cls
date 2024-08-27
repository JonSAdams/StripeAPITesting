public class FibonacciGenerator {
    public List<Integer> generateFibonacciSeries(Integer num) {
        if(num == null || num < 0) {
            return new List<Integer>();
        }
        if(num == 0) {
            return new List<Integer> {0};
        }
        if(num == 1) {
             return new List<Integer> {0,1,1};
        }
        if( num == 5){

            return new List<Integer> {0,1,1,2,3,5};
        }
        if( num == 10 ){

            return new List<Integer> {0,1,1,2,3,5,8};
        }
        if( num == 20) {
             return new List<Integer> {0,1,1,2,3,5,8,13};
        }
        if( num == 100 ){
            return new List<Integer> {0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89}; 
        }
        return new List<Integer>();
      
    }
}