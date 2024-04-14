package android.support.v4.app;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerImpl;
import android.support.v4.util.LogWriter;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import com.cyjh.common.util.C1176s;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManagerImpl.OpGenerator {
    static final int OP_ADD = 1;
    static final int OP_ATTACH = 7;
    static final int OP_DETACH = 6;
    static final int OP_HIDE = 4;
    static final int OP_NULL = 0;
    static final int OP_REMOVE = 3;
    static final int OP_REPLACE = 2;
    static final int OP_SET_PRIMARY_NAV = 8;
    static final int OP_SHOW = 5;
    static final int OP_UNSET_PRIMARY_NAV = 9;
    static final String TAG = "FragmentManager";
    boolean mAddToBackStack;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    ArrayList<Runnable> mCommitRunnables;
    boolean mCommitted;
    int mEnterAnim;
    int mExitAnim;
    final FragmentManagerImpl mManager;
    String mName;
    int mPopEnterAnim;
    int mPopExitAnim;
    ArrayList<String> mSharedElementSourceNames;
    ArrayList<String> mSharedElementTargetNames;
    int mTransition;
    int mTransitionStyle;
    ArrayList<C0152Op> mOps = new ArrayList<>();
    boolean mAllowAddToBackStack = true;
    int mIndex = -1;
    boolean mReorderingAllowed = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.app.BackStackRecord$Op */
    /* loaded from: classes.dex */
    public static final class C0152Op {
        int cmd;
        int enterAnim;
        int exitAnim;
        Fragment fragment;
        int popEnterAnim;
        int popExitAnim;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0152Op() {
        }

        C0152Op(int i, Fragment fragment) {
            this.cmd = i;
            this.fragment = fragment;
        }
    }

    public BackStackRecord(FragmentManagerImpl fragmentManagerImpl) {
        this.mManager = fragmentManagerImpl;
    }

    private void doAddOp(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        fragment.mFragmentManager = this.mManager;
        if (str != null) {
            if (fragment.mTag != null && !str.equals(fragment.mTag)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            if (fragment.mFragmentId != 0 && fragment.mFragmentId != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        addOp(new C0152Op(i2, fragment));
    }

    private static boolean isFragmentPostponed(C0152Op c0152Op) {
        Fragment fragment = c0152Op.fragment;
        return (fragment == null || !fragment.mAdded || fragment.mView == null || fragment.mDetached || fragment.mHidden || !fragment.isPostponed()) ? false : true;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction add(int i, Fragment fragment) {
        doAddOp(i, fragment, null, 1);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction add(int i, Fragment fragment, String str) {
        doAddOp(i, fragment, str, 1);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction add(Fragment fragment, String str) {
        doAddOp(0, fragment, str, 1);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void addOp(C0152Op c0152Op) {
        this.mOps.add(c0152Op);
        c0152Op.enterAnim = this.mEnterAnim;
        c0152Op.exitAnim = this.mExitAnim;
        c0152Op.popEnterAnim = this.mPopEnterAnim;
        c0152Op.popExitAnim = this.mPopExitAnim;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction addSharedElement(View view, String str) {
        if (FragmentTransition.supportsTransition()) {
            String transitionName = ViewCompat.getTransitionName(view);
            if (transitionName == null) {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
            if (this.mSharedElementSourceNames == null) {
                this.mSharedElementSourceNames = new ArrayList<>();
                this.mSharedElementTargetNames = new ArrayList<>();
            } else {
                if (this.mSharedElementTargetNames.contains(str)) {
                    throw new IllegalArgumentException("A shared element with the target name '" + str + "' has already been added to the transaction.");
                }
                if (this.mSharedElementSourceNames.contains(transitionName)) {
                    throw new IllegalArgumentException("A shared element with the source name '" + transitionName + " has already been added to the transaction.");
                }
            }
            this.mSharedElementSourceNames.add(transitionName);
            this.mSharedElementTargetNames.add(str);
        }
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction addToBackStack(String str) {
        if (!this.mAllowAddToBackStack) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.mAddToBackStack = true;
        this.mName = str;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction attach(Fragment fragment) {
        addOp(new C0152Op(7, fragment));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void bumpBackStackNesting(int i) {
        if (this.mAddToBackStack) {
            if (FragmentManagerImpl.DEBUG) {
                Log.v(TAG, "Bump nesting in " + this + " by " + i);
            }
            int size = this.mOps.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0152Op c0152Op = this.mOps.get(i2);
                if (c0152Op.fragment != null) {
                    c0152Op.fragment.mBackStackNesting += i;
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v(TAG, "Bump nesting of " + c0152Op.fragment + " to " + c0152Op.fragment.mBackStackNesting);
                    }
                }
            }
        }
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final int commit() {
        return commitInternal(false);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    final int commitInternal(boolean z) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
            dump("  ", null, printWriter, null);
            printWriter.close();
        }
        this.mCommitted = true;
        this.mIndex = this.mAddToBackStack ? this.mManager.allocBackStackIndex(this) : -1;
        this.mManager.enqueueAction(this, z);
        return this.mIndex;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final void commitNow() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, false);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, true);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction detach(Fragment fragment) {
        addOp(new C0152Op(6, fragment));
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.mAllowAddToBackStack = false;
        return this;
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        dump(str, printWriter, true);
    }

    public final void dump(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.mTransitionStyle));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mOps.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("    ");
        int size = this.mOps.size();
        for (int i = 0; i < size; i++) {
            C0152Op c0152Op = this.mOps.get(i);
            switch (c0152Op.cmd) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                default:
                    str2 = "cmd=" + c0152Op.cmd;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(C1176s.a.f4108a);
            printWriter.println(c0152Op.fragment);
            if (z) {
                if (c0152Op.enterAnim != 0 || c0152Op.exitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(c0152Op.enterAnim));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(c0152Op.exitAnim));
                }
                if (c0152Op.popEnterAnim != 0 || c0152Op.popExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(c0152Op.popEnterAnim));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(c0152Op.popExitAnim));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void executeOps() {
        int size = this.mOps.size();
        for (int i = 0; i < size; i++) {
            C0152Op c0152Op = this.mOps.get(i);
            Fragment fragment = c0152Op.fragment;
            if (fragment != null) {
                fragment.setNextTransition(this.mTransition, this.mTransitionStyle);
            }
            int i2 = c0152Op.cmd;
            if (i2 != 1) {
                switch (i2) {
                    case 3:
                        fragment.setNextAnim(c0152Op.exitAnim);
                        this.mManager.removeFragment(fragment);
                        break;
                    case 4:
                        fragment.setNextAnim(c0152Op.exitAnim);
                        this.mManager.hideFragment(fragment);
                        break;
                    case 5:
                        fragment.setNextAnim(c0152Op.enterAnim);
                        this.mManager.showFragment(fragment);
                        break;
                    case 6:
                        fragment.setNextAnim(c0152Op.exitAnim);
                        this.mManager.detachFragment(fragment);
                        break;
                    case 7:
                        fragment.setNextAnim(c0152Op.enterAnim);
                        this.mManager.attachFragment(fragment);
                        break;
                    case 8:
                        this.mManager.setPrimaryNavigationFragment(fragment);
                        break;
                    case 9:
                        this.mManager.setPrimaryNavigationFragment(null);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + c0152Op.cmd);
                }
            } else {
                fragment.setNextAnim(c0152Op.enterAnim);
                this.mManager.addFragment(fragment, false);
            }
            if (!this.mReorderingAllowed && c0152Op.cmd != 1 && fragment != null) {
                this.mManager.moveFragmentToExpectedState(fragment);
            }
        }
        if (this.mReorderingAllowed) {
            return;
        }
        this.mManager.moveToState(this.mManager.mCurState, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void executePopOps(boolean z) {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            C0152Op c0152Op = this.mOps.get(size);
            Fragment fragment = c0152Op.fragment;
            if (fragment != null) {
                fragment.setNextTransition(FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
            }
            int i = c0152Op.cmd;
            if (i != 1) {
                switch (i) {
                    case 3:
                        fragment.setNextAnim(c0152Op.popEnterAnim);
                        this.mManager.addFragment(fragment, false);
                        break;
                    case 4:
                        fragment.setNextAnim(c0152Op.popEnterAnim);
                        this.mManager.showFragment(fragment);
                        break;
                    case 5:
                        fragment.setNextAnim(c0152Op.popExitAnim);
                        this.mManager.hideFragment(fragment);
                        break;
                    case 6:
                        fragment.setNextAnim(c0152Op.popEnterAnim);
                        this.mManager.attachFragment(fragment);
                        break;
                    case 7:
                        fragment.setNextAnim(c0152Op.popExitAnim);
                        this.mManager.detachFragment(fragment);
                        break;
                    case 8:
                        this.mManager.setPrimaryNavigationFragment(null);
                        break;
                    case 9:
                        this.mManager.setPrimaryNavigationFragment(fragment);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + c0152Op.cmd);
                }
            } else {
                fragment.setNextAnim(c0152Op.popExitAnim);
                this.mManager.removeFragment(fragment);
            }
            if (!this.mReorderingAllowed && c0152Op.cmd != 3 && fragment != null) {
                this.mManager.moveFragmentToExpectedState(fragment);
            }
        }
        if (this.mReorderingAllowed || !z) {
            return;
        }
        this.mManager.moveToState(this.mManager.mCurState, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Fragment expandOps(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i = 0;
        while (i < this.mOps.size()) {
            C0152Op c0152Op = this.mOps.get(i);
            switch (c0152Op.cmd) {
                case 1:
                case 7:
                    arrayList.add(c0152Op.fragment);
                    break;
                case 2:
                    Fragment fragment3 = c0152Op.fragment;
                    int i2 = fragment3.mContainerId;
                    Fragment fragment4 = fragment2;
                    int i3 = i;
                    boolean z = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment5 = arrayList.get(size);
                        if (fragment5.mContainerId == i2) {
                            if (fragment5 == fragment3) {
                                z = true;
                            } else {
                                if (fragment5 == fragment4) {
                                    this.mOps.add(i3, new C0152Op(9, fragment5));
                                    i3++;
                                    fragment4 = null;
                                }
                                C0152Op c0152Op2 = new C0152Op(3, fragment5);
                                c0152Op2.enterAnim = c0152Op.enterAnim;
                                c0152Op2.popEnterAnim = c0152Op.popEnterAnim;
                                c0152Op2.exitAnim = c0152Op.exitAnim;
                                c0152Op2.popExitAnim = c0152Op.popExitAnim;
                                this.mOps.add(i3, c0152Op2);
                                arrayList.remove(fragment5);
                                i3++;
                            }
                        }
                    }
                    if (z) {
                        this.mOps.remove(i3);
                        i = i3 - 1;
                    } else {
                        c0152Op.cmd = 1;
                        arrayList.add(fragment3);
                        i = i3;
                    }
                    fragment2 = fragment4;
                    break;
                case 3:
                case 6:
                    arrayList.remove(c0152Op.fragment);
                    if (c0152Op.fragment == fragment2) {
                        this.mOps.add(i, new C0152Op(9, c0152Op.fragment));
                        i++;
                        fragment2 = null;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    this.mOps.add(i, new C0152Op(9, fragment2));
                    i++;
                    fragment2 = c0152Op.fragment;
                    break;
            }
            i++;
        }
        return fragment2;
    }

    @Override // android.support.v4.app.FragmentManagerImpl.OpGenerator
    public final boolean generateOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.mAddToBackStack) {
            return true;
        }
        this.mManager.addBackStackState(this);
        return true;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public final CharSequence getBreadCrumbShortTitle() {
        return this.mBreadCrumbShortTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbShortTitleRes) : this.mBreadCrumbShortTitleText;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public final int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public final CharSequence getBreadCrumbTitle() {
        return this.mBreadCrumbTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbTitleRes) : this.mBreadCrumbTitleText;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public final int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public final int getId() {
        return this.mIndex;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public final String getName() {
        return this.mName;
    }

    public final int getTransition() {
        return this.mTransition;
    }

    public final int getTransitionStyle() {
        return this.mTransitionStyle;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction hide(Fragment fragment) {
        addOp(new C0152Op(4, fragment));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean interactsWith(int i) {
        int size = this.mOps.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0152Op c0152Op = this.mOps.get(i2);
            int i3 = c0152Op.fragment != null ? c0152Op.fragment.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean interactsWith(ArrayList<BackStackRecord> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.mOps.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            C0152Op c0152Op = this.mOps.get(i4);
            int i5 = c0152Op.fragment != null ? c0152Op.fragment.mContainerId : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    BackStackRecord backStackRecord = arrayList.get(i6);
                    int size2 = backStackRecord.mOps.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        C0152Op c0152Op2 = backStackRecord.mOps.get(i7);
                        if ((c0152Op2.fragment != null ? c0152Op2.fragment.mContainerId : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final boolean isEmpty() {
        return this.mOps.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isPostponed() {
        for (int i = 0; i < this.mOps.size(); i++) {
            if (isFragmentPostponed(this.mOps.get(i))) {
                return true;
            }
        }
        return false;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction remove(Fragment fragment) {
        addOp(new C0152Op(3, fragment));
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction replace(int i, Fragment fragment) {
        return replace(i, fragment, null);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction replace(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        doAddOp(i, fragment, str, 2);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction runOnCommit(Runnable runnable) {
        if (runnable == null) {
            throw new IllegalArgumentException("runnable cannot be null");
        }
        disallowAddToBackStack();
        if (this.mCommitRunnables == null) {
            this.mCommitRunnables = new ArrayList<>();
        }
        this.mCommitRunnables.add(runnable);
        return this;
    }

    public final void runOnCommitRunnables() {
        if (this.mCommitRunnables != null) {
            int size = this.mCommitRunnables.size();
            for (int i = 0; i < size; i++) {
                this.mCommitRunnables.get(i).run();
            }
            this.mCommitRunnables = null;
        }
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setAllowOptimization(boolean z) {
        return setReorderingAllowed(z);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setBreadCrumbShortTitle(int i) {
        this.mBreadCrumbShortTitleRes = i;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setBreadCrumbShortTitle(CharSequence charSequence) {
        this.mBreadCrumbShortTitleRes = 0;
        this.mBreadCrumbShortTitleText = charSequence;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setBreadCrumbTitle(int i) {
        this.mBreadCrumbTitleRes = i;
        this.mBreadCrumbTitleText = null;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setBreadCrumbTitle(CharSequence charSequence) {
        this.mBreadCrumbTitleRes = 0;
        this.mBreadCrumbTitleText = charSequence;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setCustomAnimations(int i, int i2) {
        return setCustomAnimations(i, i2, 0, 0);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setCustomAnimations(int i, int i2, int i3, int i4) {
        this.mEnterAnim = i;
        this.mExitAnim = i2;
        this.mPopEnterAnim = i3;
        this.mPopExitAnim = i4;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setOnStartPostponedListener(Fragment.OnStartEnterTransitionListener onStartEnterTransitionListener) {
        for (int i = 0; i < this.mOps.size(); i++) {
            C0152Op c0152Op = this.mOps.get(i);
            if (isFragmentPostponed(c0152Op)) {
                c0152Op.fragment.setOnStartEnterTransitionListener(onStartEnterTransitionListener);
            }
        }
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setPrimaryNavigationFragment(Fragment fragment) {
        addOp(new C0152Op(8, fragment));
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setReorderingAllowed(boolean z) {
        this.mReorderingAllowed = z;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setTransition(int i) {
        this.mTransition = i;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setTransitionStyle(int i) {
        this.mTransitionStyle = i;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction show(Fragment fragment) {
        addOp(new C0152Op(5, fragment));
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(C1176s.a.f4108a);
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Fragment trackAddedFragmentsInPop(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int i = 0; i < this.mOps.size(); i++) {
            C0152Op c0152Op = this.mOps.get(i);
            int i2 = c0152Op.cmd;
            if (i2 != 1) {
                if (i2 != 3) {
                    switch (i2) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = c0152Op.fragment;
                            break;
                    }
                }
                arrayList.add(c0152Op.fragment);
            }
            arrayList.remove(c0152Op.fragment);
        }
        return fragment;
    }
}
