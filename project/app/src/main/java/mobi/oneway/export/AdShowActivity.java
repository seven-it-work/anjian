package mobi.oneway.export;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.KeyEvent;
import mobi.oneway.export.enums.PluginErrorType;
import mobi.oneway.export.p192a.C2641a;
import mobi.oneway.export.p198e.C2671c;
import mobi.oneway.export.p201g.C2695g;
import mobi.oneway.export.plugin.IActivityInterface;

/* loaded from: classes.dex */
public class AdShowActivity extends Activity {
    IActivityInterface iActivityInterface;
    Class pluginActivityClass;

    public AdShowActivity() {
        this.pluginActivityClass = null;
        this.iActivityInterface = null;
        try {
            this.pluginActivityClass = C2645b.m11912a(C2641a.f10169k);
            this.iActivityInterface = (IActivityInterface) this.pluginActivityClass.newInstance();
            this.iActivityInterface.attach(this);
        } catch (Exception e) {
            C2671c.m12064a(PluginErrorType.shell_error_reflectClass, C2695g.m12191a((Throwable) e));
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (this.iActivityInterface != null) {
            this.iActivityInterface.onCreate(bundle);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.iActivityInterface != null) {
            this.iActivityInterface.onDestroy();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.iActivityInterface != null ? this.iActivityInterface.onKeyDown(i, keyEvent) : super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyDownInHost(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.iActivityInterface != null) {
            this.iActivityInterface.onPause();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.iActivityInterface != null) {
            this.iActivityInterface.onResume();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.iActivityInterface != null) {
            this.iActivityInterface.onSaveInstanceState(bundle);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        if (this.iActivityInterface != null) {
            this.iActivityInterface.onStart();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (this.iActivityInterface != null) {
            this.iActivityInterface.onStop();
        }
    }
}
