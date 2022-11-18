import java.util.List;

public interface ICustomerDal {
    void add(Customer customer);
    void delete(Customer customer);
    void update(int id, Customer customer);
    List<Customer> getAll();
    Customer getById(int id);
}
