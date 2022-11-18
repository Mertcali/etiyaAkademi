import java.util.ArrayList;
import java.util.List;

public class MssqlCustomerDal implements ICustomerDal {

    private List<Customer> customers = new ArrayList<>();

    public MssqlCustomerDal() {
        customers.add(new Customer("Mert","Cal",24));
        customers.add(new Customer("Mert2","Cal2",25));
        customers.add(new Customer("Mert3","Cal3",26));
    }

    @Override
    public List<Customer> getAll() {
        System.out.println("Mssql ile customerlar getirildi.");
        return this.customers;
    }

    @Override
    public void add(Customer customer) {
        this.customers.add(customer);
    }
}
