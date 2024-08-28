package GBSB.bbibbo.Service;

public class CombinedReportDTO {
    private Long id;
    private String text;
    private String time;
    private String location;
    private String[] words;

    public CombinedReportDTO(Long id, String text, String time, String location, String[] words) {
        this.id = id;
        this.text = text;
        this.time = time;
        this.location = location;
        this.words = words;
    }

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

    public String[] getWords() {
        return words;
    }

    public void setWords(String[] words) {
        this.words = words;
    }
}
