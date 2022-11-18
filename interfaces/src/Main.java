import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
//        ICustomerDal customerDal = new OracleCustomerDal();
//        ICustomerDal customerDal1 = new MssqlCustomerDal();
//
//        customerDal1.getAll();
//        customerDal.getAll();

        ILogger[] loggers = {new DatabaseLogger(), new FileLogger()};
        CustomerManager manager = new CustomerManager(new OracleCustomerDal(),loggers);
        List<Customer> customers = manager.getAll();
        Customer customer = new Customer("Ali","Atci",35);
        for(Customer customeri : customers){
            System.out.println(customeri.getFirstName());

        }
        System.out.println("*******************");
        manager.add(customer);
        for(Customer customeri : customers){
            System.out.println(customeri.getFirstName());
        }

    }
}