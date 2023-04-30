package techorda.db;

import java.awt.print.Book;
import java.util.ArrayList;

public class DBManager {
    private static final ArrayList<Task> tasks = new ArrayList<Task>();

    private static long id = 3;
    static{ tasks.add(new Task(1L,
                               "Создать Веб приложение на JAVA EE",
                               "Нужно создать Веб приложение.",
                               "21.04.2023",
                               "Да"));
            tasks.add(new Task(2L,
                               "Убраться дома",
                               "Нужно убрать кухню.",
                               "25.04.2023",
                               "Нет"));

    }

    public static ArrayList<Task> getTasks() {
        return tasks;
    }
    public static void addTask(Task task) {
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Task getTask(int id){
        return tasks
                .stream()
                .filter(task -> task.getId()==id)
                .findFirst()
                .orElse(null);
    }
    public static void updateTask(Task tapsyrma){
        for(int i=0; i<tasks.size(); i++ ){
            if(tasks.get(i).getId()==tapsyrma.getId()){
                tasks.set(i,tapsyrma);
                break;
            }
        }
    }
    public static void deleteTask(int id){
        for(int i = 0; i<tasks.size(); i++){
            if(id == tasks.get(i).getId()){
                tasks.remove(i);
                break;
            }
        }
    }
}
