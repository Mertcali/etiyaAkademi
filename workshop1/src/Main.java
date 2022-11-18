import java.util.List;

public class Main {
    public static void main(String[] args) {

        CustomerManager manager = new CustomerManager(new MysqlCustomerDal());
        Customer customer1 = new Customer(3,"Eklemedeneme","Eklemedeneme",22);
        Customer customer2 = new Customer(4,"Updatedeneme","Updatedeneme",22);

        List<Customer> customers = manager.getAll();

        System.out.println("***********GET ALL DENEME****************");
        for(Customer customer : customers){
            System.out.println("İsim : " + customer.getFirstName());
        }

        System.out.println("***********GETBYID DENEME****************");

        Customer customer3 = manager.getById(2);
        System.out.println("İd ile getirilen isim : " +customer3.getFirstName() + " Id: " +customer3.getCustomerId());

        System.out.println("***********ADD DENEME****************");

        manager.add(customer1);
        for(Customer customer : customers){
            System.out.println("İsim : " + customer.getFirstName());
        }

        System.out.println("**********DELETE DENEME*****************");

        manager.delete(customer1);
        for(Customer customer : customers){
            System.out.println("İsim : " + customer.getFirstName());
        }

        System.out.println("**********UPDATE DENEME*****************");

        manager.update(1, customer2);
        for(Customer customer : customers){
            System.out.println("İsim : " + customer.getFirstName());
        }


    }
}