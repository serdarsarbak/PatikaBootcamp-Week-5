import sun.plugin.javascript.navig.Array;

import java.lang.reflect.Executable;
import java.util.Scanner;

public class TryCatchBlock {
    public static void main(String[] args) {

        // Pratik: 10 elemanlı tek boyutlu bir dizi içerisinde kullanıcıdan alınan indeksteki elemanı döndüren bir
        // Java metodu yazın. Eğer belirtilen indeks dizi boyutunun dışındaysa, metot bir hata mesajı döndürmelidir.
        // Dizinin elmanlarını manuel olarak tanımlayın.

        int[] myArr = {1,2,3,4,5,6,7,8,9,10};
        int index, exit;

        Scanner input = new Scanner(System.in);

        while (true) {

            try {
                System.out.print("10 elemanlı dizinin indeks numarasını giriniz: ");
                index = input.nextInt();
                System.out.println("Dizinin " + index + ". indeksi: " + myArr[index]);

            } catch (ArrayIndexOutOfBoundsException e) {
                System.out.println("Girilen değer dizinin dışarısındadır. Tekrar deneyebilirsiniz.");

            } catch (Exception e) {
                System.out.println(e.toString() + " hatası alındı.");
                break;
            }

            try {
                System.out.print("Çıkış için 0'a devam etmek için herhangi başka bir sayı giriniz: ");
                exit = input.nextInt();
                if (exit==0) {
                    break;
                }

            } catch (Exception e){
                System.out.println(e + " hatası alındı.");
                break;
            }
        }
    }

}

