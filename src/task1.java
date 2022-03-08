import java.io.*;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

public class task1 implements Serializable{

    public static void main(String[] args) throws IOException{
        Set<String> treeSet = new TreeSet();
        try {
            File file = new File("in.txt");
            FileReader fr = new FileReader(file);
            BufferedReader reader = new BufferedReader(fr);
            String line = reader.readLine();
            while (line != null) {
                treeSet.add(line);
                line = reader.readLine();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        Iterator<String> iter = treeSet.iterator();
        FileOutputStream fos = new FileOutputStream("out.txt");
        ObjectOutputStream oos = new ObjectOutputStream(fos);
        while (iter.hasNext()) {
            oos.writeObject(iter.next());
        }
        oos.close();
    }
}
