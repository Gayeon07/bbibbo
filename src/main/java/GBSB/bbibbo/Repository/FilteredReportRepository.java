package GBSB.bbibbo.Repository;

import GBSB.bbibbo.Entity.FilteredReport;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FilteredReportRepository extends JpaRepository<FilteredReport, Long> {
    // Custom queries can be added here
}