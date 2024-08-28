package GBSB.bbibbo.Controller;

import GBSB.bbibbo.Service.CombinedReportDTO;
import GBSB.bbibbo.Service.CombinedReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class DataController {

    @Autowired
    private CombinedReportService combinedReportService;

    @GetMapping("/combined-reports")
    public List<CombinedReportDTO> getCombinedReports() {
        return combinedReportService.getCombinedReports();
    }
}
