package com.cyjh.mobileanjian.ipc.uip;

import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mqm.MQUipStub;

/* loaded from: classes.dex */
public class UisScriptRunner {

    /* renamed from: a */
    private static UisScriptRunner f6345a;

    /* renamed from: b */
    private static boolean f6346b;

    /* renamed from: c */
    private MQUipStub f6347c = new MQUipStub();

    private UisScriptRunner() {
    }

    /* renamed from: a */
    private static void m7431a() {
        try {
            Thread.sleep(50L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static UisScriptRunner getInstance() {
        if (f6345a == null) {
            f6345a = new UisScriptRunner();
        }
        return f6345a;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.cyjh.mobileanjian.ipc.uip.UisScriptRunner$1] */
    public void startLoop(final String str, final String str2) {
        if (f6346b) {
            stopLoop();
            while (f6346b) {
                try {
                    Thread.sleep(50L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
        new Thread() { // from class: com.cyjh.mobileanjian.ipc.uip.UisScriptRunner.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                super.run();
                boolean unused = UisScriptRunner.f6346b = true;
                UisScriptRunner.this.f6347c.StartLoop(str, 0L, str2);
                boolean unused2 = UisScriptRunner.f6346b = false;
            }
        }.start();
    }

    public void stopLoop() {
        if (f6346b) {
            this.f6347c.StopLoop();
            UipEventStub.hasEvent(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId("stop_id").setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_EXIT).build()).build().toByteString());
        }
    }
}
