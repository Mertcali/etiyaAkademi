import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");
        System.out.println("Merhaba Etiya");

        String text = "Merhaba";
        System.out.println(text);

        String numberTen = "10";
        int number = 10;

        double dnumber = 10.5;

        char character = 'A';

        boolean isVerified = false;
        System.out.println(isVerified);

        System.out.println(dnumber + 5);
        System.out.println(dnumber - 5);
        System.out.println(dnumber * 5);
        System.out.println(dnumber / 5);
        System.out.println(number % 5);


        System.out.println(5 == number);
        System.out.println(5 != number);
        System.out.println(5 >= number);
        System.out.println(5 < number);

        double dolarAlis = 18.5407;
        double dolarSatis = 18.8407;

        double dolarAlisDun = 18.4;

        System.out.println(dolarAlis);
        System.out.println(dolarSatis);
        System.out.println(dolarAlisDun > dolarAlis);

        if(dolarAlis > dolarAlisDun)
        {
            System.out.println("Dolar kuru arttı");
        }
        else if(dolarAlis == dolarAlis)
        {
            System.out.println("Dolar kuru degismedi");
        }
        else if(dolarAlis + 1 > dolarAlisDun)
        {
            System.out.println("XX");
        }
        else{
            System.out.println("Dolar kuru azaldı");
        }


        int givenNumber = 9;

        if(givenNumber % 2 == 0){
            System.out.println("Sayı çift");
        }else{
            System.out.println("Girilen sayı tek");
        }

        String status = "D";

        switch (status){
            case "A":
                System.out.println("Sipariş alındı");
                break;
            case "B":
                System.out.println("Sipariş hazırlanıyor");
                break;
            case "C":
                System.out.println("Sipariş kargoya verildi");
                break;
            default:
                System.out.println("Bilinmeyen status");
        }

        for(int i =0; i<10; i++){
            System.out.println(i);
        }
        //List
        String[] cars = {"Ford", "Fiat", "Mazda"};
        for (int i = 0; i<cars.length; i++){
            System.out.println(cars[i]);
        }

        //Iteration
        for(String car : cars){
            System.out.println(car);
        }

        List<String> carList = new ArrayList<>();
        carList.add("Peugeout");
        carList.add("BMW");

        for(String car : carList){
            System.out.println(car);
        }

        int sayi = 0;
        while(sayi<50){
            System.out.println(sayi);
            sayi += 10;
        }
        System.out.println("****************");

        int sayi2=0;
        do{
            System.out.println(sayi2);
            sayi2 += 10;
        }while(sayi2<50);

        int n1 = 5;
        int n2 = 10;

        int sonuc = 0;

        sonuc = (n1>n2) ? (n1 + n2) : (n1-n2);
        System.out.println("Sonuc: " +sonuc);

    }
}