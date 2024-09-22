public class SentenceSearcher {
    public String sentenceSearcher(String text, String word) {
        List<String> sentences = text.split('\\.');
        if(text == null || text == '' || word == null || word == '') {
            return '';
        }
        System.debug(sentences);
        for(String sentence : sentences) {
            System.debug(sentence);
            if(sentence.containsIgnoreCase(word)) {
                sentence = sentence.trim();
                return sentence+'.';
            }
        }
        return '';
    }
}
