public class Employee extends  Person{
    public Employee(){

    }

    public Employee(String name){
        super(name);
    }
    double salary;
    String companyName;

    public void work(){
        System.out.println(firstName + " Employee çalışıyor.");
    }
}
