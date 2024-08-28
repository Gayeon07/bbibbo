package GBSB.bbibbo.Service;

import GBSB.bbibbo.Entity.FilteredReport;
import GBSB.bbibbo.Entity.GroupedProcessedWord;
import GBSB.bbibbo.Repository.FilteredReportRepository;
import GBSB.bbibbo.Repository.GroupedProcessedWordRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CombinedReportService {

    @Autowired
    private FilteredReportRepository filteredReportRepository;

    @Autowired
    private GroupedProcessedWordRepository groupedProcessedWordRepository;

    public List<CombinedReportDTO> getCombinedReports() {
        List<FilteredReport> reports = filteredReportRepository.findAll();

        // DateTimeFormatter for parsing the time string
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");

        // reports 리스트를 time 필드를 기준으로 내림차순 정렬
        List<FilteredReport> sortedReports = reports.stream()
                .sorted((report1, report2) -> {
                    LocalTime time1 = LocalTime.parse(report1.getTime(), formatter);
                    LocalTime time2 = LocalTime.parse(report2.getTime(), formatter);
                    return time2.compareTo(time1); // 내림차순 정렬
                })
                .collect(Collectors.toList());

        return sortedReports.stream()
                .map(report -> {
                    Optional<GroupedProcessedWord> optionalGroupedProcessedWord = groupedProcessedWordRepository.findById(report.getId());
                    String[] wordsArray = optionalGroupedProcessedWord.map(word -> convertWordsToArray(word.getWords())).orElse(new String[]{});

                    return new CombinedReportDTO(
                            report.getId(),
                            report.getText(),
                            report.getTime(),
                            report.getLocation(),
                            wordsArray
                    );
                })
                .collect(Collectors.toList());
    }

    private String[] convertWordsToArray(String words) {
        if (words == null || words.isEmpty()) {
            return new String[]{};
        }

        String[] wordsArray = words.split(",");

        // 배열을 역순으로 정렬
        for (int i = 0; i < wordsArray.length / 2; i++) {
            String temp = wordsArray[i];
            wordsArray[i] = wordsArray[wordsArray.length - i - 1];
            wordsArray[wordsArray.length - i - 1] = temp;
        }

        return wordsArray;
    }
}
