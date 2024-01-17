import java.util.Scanner;

import java.util.HashMap;
import java.util.*;


public class Main {
    public static void main(String[] args) {

        /*
        Kullanıcı tarafından girilen bir metinde en çok geçen kelimeyi bulup ekrana yazdıran bir Java projesi yazınız.
         */

        Scanner input = new Scanner(System.in);
        System.out.print("Lütfen bir metin giriniz: ");
        String text = input.nextLine();

        HashMap<String, Integer> list = new HashMap<String, Integer>();
        //metinin splitle ayrıştırılması.
        String[] splitedText = text.split("\\s+");

        // kelimelerin Hashmapa eklenmesi:
        for (String word : splitedText) {
            if (list.containsKey(word)) {
                list.put(word, list.get(word) + 1);
            } else {
                list.put(word, 1);
            }
        }

        int maxWord = 0;

        //en çok kelimenin sayısının belirlenmesi:
        for (Integer item : list.values()) {
            if (item > maxWord) {
                maxWord = item;
            }
        }

        //sonuçların yazdırılması:
        System.out.println();
        System.out.println("Metinde en çok geçen kelime:");

        for (String key : getKeys(list, maxWord)) {
            System.out.println("-----------------");

            System.out.println(key + ": " + maxWord + " kere geçmektedir.");
        }
    }

    // value'den key bulunmasına ilişkin fonksiyon:
    private static Set<String> getKeys(Map<String, Integer> map, Integer value) {

        Set<String> result = new HashSet<>();
        if (map.containsValue(value)) {
            for (Map.Entry<String, Integer> entry : map.entrySet()) {
                if (Objects.equals(entry.getValue(), value)) {
                    result.add(entry.getKey());
                }
            }
        }
        return result;
    }
}
