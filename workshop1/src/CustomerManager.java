import java.util.List;

public class CustomerManager {

    ICustomerDal customerDal;

    public CustomerManager(ICustomerDal customerDal) {
        this.customerDal = customerDal;
    }

    public void add(Customer customer){
        customerDal.add(customer);
    }

    public void delete(Customer customer){
        customerDal.delete(customer);
    }

    public void update(int id, Customer customer){
        customerDal.update(id,customer);
    }

    public Customer getById(int id){
        return customerDal.getById(id);
    }

    public List<Customer> getAll(){
        return customerDal.getAll();
    }
}
