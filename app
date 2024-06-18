import com.datadog.android.Datadog;
import com.datadog.android.rum.RumConfiguration;

public class MyApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();

        // Initialize Datadog
        Datadog.initialize(
            this,
            new Credentials(
                "YOUR_CLIENT_TOKEN",
                "YOUR_ENVIRONMENT",
                "YOUR_APPLICATION_ID",
                "YOUR_SITE"  // เช่น "datadoghq.com"
            )
        );

        // Configure RUM
        RumConfiguration config = new RumConfiguration.Builder(
                "YOUR_APPLICATION_ID",
                "YOUR_ENVIRONMENT"
        ).build();
        Datadog.initializeRUM(config);
    }
}
