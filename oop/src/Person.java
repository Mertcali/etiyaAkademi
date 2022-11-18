public class Person {

    public Person(){
        System.out.println("Constructor çalıştı.");
    }

    public Person(String firstName){
        System.out.println(firstName + " string constructor çalıştı");
    }
    String firstName;
    String lastName;
    int age;

    public void nefesAl(){
        System.out.println(firstName +" Nefes aldı.");
    }
}
