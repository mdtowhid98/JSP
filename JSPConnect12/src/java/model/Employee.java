
package model;


public class Employee {
    private int id;
    private String name;
    private String email;
    private String cell;

    public Employee() {
    }

    public Employee(int id, String name, String email, String cell) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.cell = cell;
    }

    public Employee(String name, String email, String cell) {
        this.name = name;
        this.email = email;
        this.cell = cell;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCell() {
        return cell;
    }

    public void setCell(String cell) {
        this.cell = cell;
    }
    
    
}
