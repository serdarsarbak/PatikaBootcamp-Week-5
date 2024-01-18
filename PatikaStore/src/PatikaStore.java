import java.lang.reflect.Executable;
import java.util.Scanner;

public class PatikaStore {
    Scanner scanner = new Scanner(System.in);

    boolean isRunning = true;

    public void run() {
        while (isRunning) {
            System.out.println("Patika Store Yönetim Paneli");
            System.out.println("1- Notebook işlemleri \n" + "2- Cep telefonu işlemleri \n" + "3- Markaları listeleme \n" + "0- Çıkış yap");
            System.out.println();
            System.out.print("Yapmak istediğiniz işlemleri seçiniz: ");

            int selection = scanner.nextInt();

                switch (selection) {
                    case 1:
                        Notebook notebook = new Notebook();
                        notebook.runMenu();
                        break;
                    case 2:
                        Phone phone = new Phone();
                        phone.runMenu();
                        break;
                    case 3:
                        Brand brand = new Brand();
                        brand.printBrand();
                        break;
                    case 0:
                        System.out.println("Çıkış yapıldı");
                        isRunning = false;
                        break;
                    default:
                        System.out.println("Hatalı değer girdiniz!");

                }

        }
    }
}
