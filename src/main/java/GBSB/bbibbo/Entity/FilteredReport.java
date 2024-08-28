package GBSB.bbibbo.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Table;
import jakarta.persistence.Id;

@Entity
@Table(name = "filtered_reports")
public class FilteredReport {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String text;
    private String time;
    private String location;
    private String processed_text;
    private String disaster_column;
    private String predicted_NaiveBayes;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getProcessed_text() {
        return processed_text;
    }

    public void setProcessed_text(String processed_text) {
        this.processed_text = processed_text;
    }

    public String getDisaster_column() {
        return disaster_column;
    }

    public void setDisaster_column(String disaster_column) {
        this.disaster_column = disaster_column;
    }

    public String getPredicted_NaiveBayes() {
        return predicted_NaiveBayes;
    }

    public void setPredicted_NaiveBayes(String predicted_NaiveBayes) {
        this.predicted_NaiveBayes = predicted_NaiveBayes;
    }
}