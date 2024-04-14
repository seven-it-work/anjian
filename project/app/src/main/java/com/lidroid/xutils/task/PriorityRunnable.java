package com.lidroid.xutils.task;

/* loaded from: classes.dex */
public class PriorityRunnable extends PriorityObject<Runnable> implements Runnable {
    public PriorityRunnable(Priority priority, Runnable runnable) {
        super(priority, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        ((Runnable) this.obj).run();
    }
}
