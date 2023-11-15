package KarateDemo;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
	
	 
    @Karate.Test
    Karate testUsers() {
        return Karate.run("Myfullmethodfile").relativeTo(getClass());
    }    


}
