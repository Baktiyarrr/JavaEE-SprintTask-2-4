package techorda.db;

public class Task {
    private Long id;
    private String name;
    private String description;
    private String deadlineDate;
    private String option;
    public Task(){

    }
    public Task(Long id, String name, String description, String deadlineDate, String option) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.deadlineDate = deadlineDate;
        this.option = option;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }
    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }
}
