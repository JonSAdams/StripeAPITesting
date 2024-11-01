public class CaseResolutionCalculator {
    public Map<String,Decimal> calculateAverageResolutionTime(List<CaseRecord> caseRecords) {
        Map<String,Decimal> averageResolutionByCase = new Map<String,Decimal>();

        Map<String,Integer> numbeOfCasesByAgent = new Map<String,Integer>();
        for (CaseRecord caseRecord : caseRecords) {
            if(numbeOfCasesByAgent.containsKey(caseRecord.agentId)) {
                Integer numberOfCases = numbeOfCasesByAgent.get(caseRecord.agentId);
                numbeOfCasesByAgent.put(caseRecord.agentId, numberOfCases + 1);
            } else {
                numbeOfCasesByAgent.put(caseRecord.agentId, 1);
            }
        }
        for(CaseRecord caseRecord : caseRecords) {
            if(averageResolutionByCase.containsKey(caseRecord.agentId)) {
                Decimal resolutionTime = averageResolutionByCase.get(caseRecord.agentId);
                averageResolutionByCase.put(caseRecord.agentId, resolutionTime + caseRecord.resolutionTime);
            } else {
                averageResolutionByCase.put(caseRecord.agentId, caseRecord.resolutionTime);
            }
        }

        for(String agentId : averageResolutionByCase.keySet()) {
            Decimal resolutionTime = averageResolutionByCase.get(agentId);
            Decimal averageResolution = resolutionTime / numbeOfCasesByAgent.get(agentId);

            averageResolutionByCase.put(agentId,averageResolution);
        }
        return averageResolutionByCase;


    }
}