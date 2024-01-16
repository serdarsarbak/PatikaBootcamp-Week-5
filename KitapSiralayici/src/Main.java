import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;

public class Main {

    public static void main(String[] args) {

        /*
        Kitap Sıralayıcı:

        Book isminde bir sınıf tasarlayınız. Bu sınıf Comparable interface'den kalıtım alıp "compareTo" metodunu override
        ediniz. Bu metodun içinde kitabı A'dan Z'ye isme göre sıralayan kodu yazınız. Bu sınıftan 5 tane nesne oluşturun
        ve nesneleri Set tipinde bir yapısında saklayınız. Sonra ikinci kez Set tipinden bir veri yapısı kullanın ve kitapları
        sayfa sayısına göre sıralamasını sağlayınız.

        Book sınıfı kitap ismi, sayfa sayısı, yazarın ismi, yayın tarihi değişkenlerinden oluşmaktadır.
         */

        Book book1 = new Book("Kürk Mantolu Madonna", 160, "Sabahattin Ali ", "2000");
        Book book2 = new Book("Kraliçeyi Kurtarmak", 161, "Vladimir Tumanov", "1994");
        Book book3 = new Book("Seker Portakalı", 182, "Jose Mauro De Vasconcelos", "2010");
        Book book4 = new Book("Veronika Ölmek İstiyor", 198, "Paulo Coelho", "1999");
        Book book5 = new Book("Momo", 304, "Michael Ende", "2004");

        Set<Book> nameSorting = new TreeSet<>();
        nameSorting.add(book1);
        nameSorting.add(book2);
        nameSorting.add(book3);
        nameSorting.add(book4);
        nameSorting.add(book5);

        System.out.println("----------------------------");
        System.out.println("Kitap ismine göre sıralama:");
        for (Book book : nameSorting) {
            System.out.println("Kitap ismi: " + book.getName() + " / Yazar: " + book.getAuthor() + " / Sayfa sayısı: " + book.getPage() + " / Yayım yılı: " + book.getPublicationYear());
        }

        Comparator<Book> pageCountComparator = Comparator.comparingInt(Book::getPage).reversed();

        Set<Book> pageCountSorting = new TreeSet<>(pageCountComparator);
        pageCountSorting.addAll(nameSorting);

        System.out.println();
        System.out.println("----------------------------");
        System.out.println("Sayfa sayısına göre sıralama (büyükten küçüğe):");
        for (Book book : pageCountSorting) {
            System.out.println("Kitap ismi: " + book.getName() + " / Yazar: " + book.getAuthor() + " / Sayfa sayısı: " + book.getPage() + " / Yayım yılı: " + book.getPublicationYear());
        }
    }
}