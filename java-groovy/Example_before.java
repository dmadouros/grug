import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

class Example {

  public static void main(String[] args) {
    
    try {
      File file = new File("alpha.txt");
      BufferedReader reader = new BufferedReader(new FileReader(file));

      String line;
      while ((line = reader.readLine()) != null) {
        System.out.println(line);
      }

      reader.close();
    }
    catch (FileNotFoundException e) {
      throw new RuntimeException(e);
    }
    catch (IOException e) {
      throw new RuntimeException(e);
    }
  }
}