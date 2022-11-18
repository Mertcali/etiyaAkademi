public class Product {
    public Product() {
    }

    public Product(String name, double unitPrice, String imgUrl, double discountRate, int stock) {
        this.name = name;
        this.unitPrice = unitPrice;
        this.imgUrl = imgUrl;
        this.discountRate = discountRate;
        this.stock = stock;
    }

    private String name;
    private double unitPrice;
    private String imgUrl;
    private double discountRate;
    private int stock;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public double getDiscountRate() {
        return discountRate;
    }

    public void setDiscountRate(double discountRate) {
        this.discountRate = discountRate;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        if(stock < 0){
            stock = 0;
        }
        this.stock = stock;
    }
}
