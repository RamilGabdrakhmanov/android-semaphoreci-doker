package ramil.androidsemaphorecidoker;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

/**
 * A login screen that offers login via email/password.
 */
public class LoginActivity extends Activity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        Log.e("LoginActivity", getHello(getResources()));
    }

    public String getHello(Resources resources) {
        ResFunction f = (res) -> res.getString(R.string.hello);
        return f.run(resources);
    }
}

