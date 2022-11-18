import java.util.List;

public class CustomerManager {

    private ICustomerDal customerDal;
    private ILogger[] loggers;

    public CustomerManager(ICustomerDal customerDal, ILogger[] loggers) {
        this.customerDal = customerDal;
        this.loggers = loggers;
    }

    public void add(Customer customer){

        //validasyon uygula
        //iş kuralları uygula
        //daldan ekleme metodunu çağır.
        //logger'dan log metodunu çağır.
        customerDal.add(customer);
        for(ILogger logger : loggers){
            logger.log();
        }
    }

    public List<Customer> getAll(){
        for(ILogger logger : loggers){
            logger.log();
        }
        return customerDal.getAll();
    }
}
