package ramil.androidsemaphorecidoker;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

import static org.fest.assertions.api.Assertions.assertThat;


@RunWith(RobolectricTestRunner.class)
@Config(emulateSdk = 18, manifest = "src/main/AndroidManifest.xml")
public class SimpleTest {

    @Before public void setUp() throws Exception {
    }

    @Test public void testNotEmpty() {
        assertThat(!Boolean.TRUE).isTrue();
    }
}