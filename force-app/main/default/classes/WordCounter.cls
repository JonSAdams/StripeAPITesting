public class WordCounter {
    public Integer countWordsMethod(String str) {
        Integer numOfWords;
        if(String.isBlank(str) || String.isEmpty(str)) {
            System.debug('String is empty');
            numOfWords = 0;
        } else {
          numOfWords = str.normalizeSpace().split(' ').size();
        }
        return numOfWords;
    }
}