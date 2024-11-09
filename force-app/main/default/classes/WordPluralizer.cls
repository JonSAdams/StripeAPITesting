public class WordPluralizer {
    public Set<String> pluralize(List<String> words) {
        Set<String> pluralizedWords = new Set<String>();
        Map<String,Integer> countOfWords = new Map<String,Integer>();
        
        // Count the occurrences of each word
        for(String word : words) {
            Integer count = countOfWords.get(word);
            if(count == null) {
                countOfWords.put(word, 1);
            } else {
                countOfWords.put(word, count + 1);
            }
        }
        
        // Add pluralized words to the result list
        for(String word : countOfWords.keySet()) {
            if(countOfWords.get(word) > 1) {
                pluralizedWords.add(word + 's');
            } else {
                pluralizedWords.add(word);
            }
        }
        
        return pluralizedWords;
    }
}