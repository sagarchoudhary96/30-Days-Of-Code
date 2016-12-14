class MyBook extends Book{
    private int book_Price;
     MyBook(String title, String author, int price){
         super(title, author);
         this.book_Price = price;
     }
    public void display(){
        System.out.println("Title: "+title);
        System.out.println("Author: "+author);
        System.out.println("Price: "+book_Price);
    }
}
