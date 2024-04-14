package android.arch.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.arch.lifecycle.ViewModelProvider;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;

/* loaded from: classes.dex */
public class ViewModelProviders {

    @Deprecated
    /* loaded from: classes.dex */
    public static class DefaultFactory extends ViewModelProvider.AndroidViewModelFactory {
        @Deprecated
        public DefaultFactory(@NonNull Application application) {
            super(application);
        }
    }

    @Deprecated
    public ViewModelProviders() {
    }

    private static Activity checkActivity(Fragment fragment) {
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            throw new IllegalStateException("Can't create ViewModelProvider for detached fragment");
        }
        return activity;
    }

    private static Application checkApplication(Activity activity) {
        Application application = activity.getApplication();
        if (application == null) {
            throw new IllegalStateException("Your activity/fragment is not yet attached to Application. You can't request ViewModel before onCreate call.");
        }
        return application;
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelProvider m16of(@NonNull Fragment fragment) {
        return m17of(fragment, (ViewModelProvider.Factory) null);
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelProvider m17of(@NonNull Fragment fragment, @Nullable ViewModelProvider.Factory factory) {
        Application checkApplication = checkApplication(checkActivity(fragment));
        if (factory == null) {
            factory = ViewModelProvider.AndroidViewModelFactory.getInstance(checkApplication);
        }
        return new ViewModelProvider(ViewModelStores.m20of(fragment), factory);
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelProvider m18of(@NonNull FragmentActivity fragmentActivity) {
        return m19of(fragmentActivity, (ViewModelProvider.Factory) null);
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelProvider m19of(@NonNull FragmentActivity fragmentActivity, @Nullable ViewModelProvider.Factory factory) {
        Application checkApplication = checkApplication(fragmentActivity);
        if (factory == null) {
            factory = ViewModelProvider.AndroidViewModelFactory.getInstance(checkApplication);
        }
        return new ViewModelProvider(ViewModelStores.m21of(fragmentActivity), factory);
    }
}
