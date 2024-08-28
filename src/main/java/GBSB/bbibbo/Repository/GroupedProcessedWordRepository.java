package GBSB.bbibbo.Repository;

import GBSB.bbibbo.Entity.GroupedProcessedWord;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GroupedProcessedWordRepository extends JpaRepository<GroupedProcessedWord, Long> {
    // Custom queries can be added here
}