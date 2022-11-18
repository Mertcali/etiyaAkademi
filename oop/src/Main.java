public class Main {
    public static void main(String[] args) {

        //instance
        Product product1 = new Product();
        product1.setUnitPrice(50);
        product1.setName("Erkek Deri Bot");
        product1.setDiscountRate(13.5);
        product1.setImgUrl("bot.jpeg");
        product1.setStock(15);

        Product product2 = new Product();
        product2.setUnitPrice(10523);
        product2.setName("4k ultra tv");

        Product product3 = new Product("Ürün", 15, "Ürün", 13.5, -15);


        //System.out.println(product1);

//**********************************************

        int sayi1 = 10;
        int sayi2 = 20;
        sayi2 = sayi1;
        sayi1 = 30;
       // System.out.println(sayi2);
        // Çıktı 10

        int[] sayilar1 = new int[]{1, 2, 3};
        int[] sayilar2 = new int[]{4, 5, 6};

        sayilar2 = sayilar1;
        sayilar1[0] = 10;
        //System.out.println(sayilar2[0]);
        //Çıktı 10

        //**********************************************

        DortIslem dortIslem = new DortIslem();
        int toplam = dortIslem.topla(5,10);
        System.out.println(toplam);
        int toplam2 = dortIslem.topla(5,10,15);
        System.out.println(toplam2);

        //**********************************************

        Person person = new Person();
        person.firstName = "Ad Person";
        person.lastName = "Soyad Person";
        person.nefesAl();

        Employee employee = new Employee("asd");
        employee.firstName ="Ad Employee";
        employee.lastName = "Soyad Employee";
        employee.age=25;
        employee.salary=5555;
        employee.work();
        employee.nefesAl();

        Customer customer = new Customer();
        customer.firstName = "Ad Customer";
        customer.lastName = "Soyad Customer";
        customer.age = 25;
        customer.buy();

    }

}