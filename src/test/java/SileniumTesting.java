import org.junit.BeforeClass;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class SileniumTesting {

    private static WebDriver driver;

    @BeforeClass
    private void setUp() {
        String pathToDriver = "/Users/maximbutin/Documents/Study/Testing/BDDSite/chromedriver";
        ChromeOptions options = new ChromeOptions();
        System.setProperty("webdriver.chrome.driver", pathToDriver);
        options.addArguments("--headless");
        driver = new ChromeDriver();
    }


}
