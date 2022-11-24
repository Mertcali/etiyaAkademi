import java.util.ArrayList;
import java.util.List;

public class MysqlCustomerDal implements ICustomerDal{

    List<Customer> customers = new ArrayList<>();

    public MysqlCustomerDal() {
        customers.add(new Customer(1,"Mert","Cal",25));
        customers.add(new Customer(2,"Mert2","Cal2",26));
        customers.add(new Customer(3,"Mert3","Cal3",27));
    }

    @Override
    public void add(Customer customer) {
        this.customers.add(customer);
    }

    @Override
    public void delete(Customer customer) {

        this.customers.remove(customer);
    }

    @Override
    public void update(int id,Customer customer) {

        this.customers.set(id -1 ,customer);

    }

    @Override
    public List<Customer> getAll() {
        return this.customers;
    }

    @Override
    public Customer getById(int id) {
        for(Customer customer : customers){
            if(customer.getCustomerId() == id){
                return customer;
            }
            }
        System.out.println("Böyle bir id bulunamadı.");
        return null;
        }
    }

