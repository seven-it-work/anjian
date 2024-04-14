package android.arch.lifecycle;

import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;

/* loaded from: classes.dex */
public class ViewModelStores {
    private ViewModelStores() {
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelStore m20of(@NonNull Fragment fragment) {
        return fragment instanceof ViewModelStoreOwner ? fragment.getViewModelStore() : HolderFragment.holderFragmentFor(fragment).getViewModelStore();
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelStore m21of(@NonNull FragmentActivity fragmentActivity) {
        return fragmentActivity instanceof ViewModelStoreOwner ? fragmentActivity.getViewModelStore() : HolderFragment.holderFragmentFor(fragmentActivity).getViewModelStore();
    }
}
