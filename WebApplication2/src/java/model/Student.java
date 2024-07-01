
package model;


public class Student {
  
  private int id;
  private String name;
  private String address;
  private String email;
  private String cell;

    public Student() {
    }

    public Student(int id, String name, String address, String email, String cell) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.email = email;
        this.cell = cell;
    }

    public Student(String name, String address, String email, String cell) {
        this.name = name;
        this.address = address;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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
