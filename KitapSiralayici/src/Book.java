import java.util.Comparator;

public class Book implements Comparable<Book> {
    private String name;
    private int page;
    private String author;
    private String publicationYear;

    public Book(String name, int page, String author, String publicationYear) {
        this.name = name;
        this.page = page;
        this.author = author;
        this.publicationYear = publicationYear;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublicationYear() {
        return publicationYear;
    }

    public void setPublicationYear(String publicationYear) {
        this.publicationYear = publicationYear;
    }

    @Override
    public int compareTo(Book otherBook) {
        return this.name.compareTo(otherBook.name);
    }

}