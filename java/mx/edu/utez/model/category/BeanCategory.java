package mx.edu.utez.model.category;

public class BeanCategory {
    private int idCategory;

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BeanCategory(int idCategory, String name, int status) {
        this.idCategory = idCategory;
        this.name = name;
        this.status = status;
    }
    public BeanCategory(){}

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    private String name;
    private int status;
}
