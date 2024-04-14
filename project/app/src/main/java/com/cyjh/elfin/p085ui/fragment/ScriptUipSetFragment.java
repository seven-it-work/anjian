package com.cyjh.elfin.p085ui.fragment;

import android.app.Activity;
import android.arch.lifecycle.Observer;
import android.arch.lifecycle.ViewModelProviders;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bumptech.glide.load.p042b.AbstractC0913i;
import com.bumptech.glide.request.C1066g;
import com.cyjh.common.base.fragment.BaseFragement;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.p068c.AbstractCountDownTimerC1136a;
import com.cyjh.common.p070e.C1141b;
import com.cyjh.common.util.C1147a;
import com.cyjh.common.util.C1149ab;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1152ae;
import com.cyjh.common.util.C1162e;
import com.cyjh.common.util.C1169l;
import com.cyjh.common.util.C1171n;
import com.cyjh.common.util.C1172o;
import com.cyjh.common.util.C1174q;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1288a;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p076d.C1238c;
import com.cyjh.elfin.p077e.p078a.C1239a;
import com.cyjh.elfin.p077e.p080c.C1255f;
import com.cyjh.elfin.p077e.p080c.C1260k;
import com.cyjh.elfin.p077e.p080c.C1263n;
import com.cyjh.elfin.p077e.p080c.C1264o;
import com.cyjh.elfin.p085ui.activity.BindRegisterCodeActivity;
import com.cyjh.elfin.p085ui.model.ScriptUipSetModel;
import com.cyjh.elfin.p085ui.p086a.DialogC1316d;
import com.cyjh.elfin.p085ui.p086a.ViewOnClickListenerC1317e;
import com.cyjh.elfin.services.C1308a;
import com.cyjh.feedback.lib.p092d.C1463b;
import com.cyjh.feedback.lib.p093e.C1468e;
import com.cyjh.http.p096c.p099c.C1546c;
import com.cyjh.http.p096c.p099c.C1562s;
import com.cyjh.mq.sdk.MqRunner;
import com.elf.studio.p114a.C1709a;
import com.elfin.ad.p119c.InterfaceC1731a;
import com.elfin.ad.p121e.C1733a;
import com.elfin.ad.p121e.C1734b;
import com.elfin.engin.C1752d;
import com.elfin.engin.p123a.C1743c;
import com.elfin.engin.p124b.p125a.InterfaceC1747a;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import org.greenrobot.eventbus.C2772c;
import org.greenrobot.eventbus.InterfaceC2779j;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;

/* loaded from: classes.dex */
public class ScriptUipSetFragment extends BaseFragement implements View.OnClickListener {

    /* renamed from: a */
    public static final int f5363a = 10;

    /* renamed from: d */
    private static final String f5364d = "ScriptUipSetFragment";

    /* renamed from: e */
    private static final int f5365e = 5;

    /* renamed from: q */
    private static final int f5366q = 20150617;

    /* renamed from: c */
    public ScriptUipSetModel f5368c;

    /* renamed from: f */
    private View f5369f;

    /* renamed from: g */
    private LinearLayout f5370g;

    /* renamed from: h */
    private Button f5371h;

    /* renamed from: i */
    private Button f5372i;

    /* renamed from: j */
    private TextView f5373j;

    /* renamed from: k */
    private RelativeLayout f5374k;

    /* renamed from: l */
    private ImageView f5375l;

    /* renamed from: m */
    private TextView f5376m;

    /* renamed from: n */
    private TextView f5377n;

    /* renamed from: p */
    private CountDownTimerC1397a f5379p;

    /* renamed from: s */
    private InterfaceC1747a f5381s;

    /* renamed from: t */
    private C1734b f5382t;

    /* renamed from: o */
    private int f5378o = 0;

    /* renamed from: r */
    private Handler f5380r = new Handler();

    /* renamed from: b */
    boolean f5367b = false;

    /* renamed from: com.cyjh.elfin.ui.fragment.ScriptUipSetFragment$1 */
    /* loaded from: classes.dex */
    final class C13931 implements InterfaceC1731a<String> {
        C13931() {
        }

        /* renamed from: c */
        private void m6460c(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Context context = ScriptUipSetFragment.this.getContext();
            ImageView imageView = ScriptUipSetFragment.this.f5375l;
            if (str.endsWith(".gif")) {
                C1066g m4505a = C1174q.m4505a();
                m4505a.mo3360b(AbstractC0913i.f2752c);
                C1174q.m4511a(context, str, imageView, m4505a);
            } else {
                C1066g m4505a2 = C1174q.m4505a();
                m4505a2.mo3360b(AbstractC0913i.f2751b);
                C1174q.m4518b(context, str, imageView, m4505a2);
            }
            ScriptUipSetFragment.m6438b(ScriptUipSetFragment.this);
            ScriptUipSetFragment.this.f5376m.setVisibility(0);
            ScriptUipSetFragment.this.f5374k.setVisibility(0);
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: a */
        public final void mo6336a() {
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: a */
        public final /* synthetic */ void mo6337a(String str) {
            String str2 = str;
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            Context context = ScriptUipSetFragment.this.getContext();
            ImageView imageView = ScriptUipSetFragment.this.f5375l;
            if (str2.endsWith(".gif")) {
                C1066g m4505a = C1174q.m4505a();
                m4505a.mo3360b(AbstractC0913i.f2752c);
                C1174q.m4511a(context, str2, imageView, m4505a);
            } else {
                C1066g m4505a2 = C1174q.m4505a();
                m4505a2.mo3360b(AbstractC0913i.f2751b);
                C1174q.m4518b(context, str2, imageView, m4505a2);
            }
            ScriptUipSetFragment.m6438b(ScriptUipSetFragment.this);
            ScriptUipSetFragment.this.f5376m.setVisibility(0);
            ScriptUipSetFragment.this.f5374k.setVisibility(0);
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: a, reason: avoid collision after fix types in other method */
        public final void mo7907a(String str) {
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: b */
        public final void mo6338b() {
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: b */
        public final void mo6339b(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ScriptUipSetFragment.this.f5377n.setText(String.format(ScriptUipSetFragment.this.getString(R.string.ad_source_mark), str));
            ScriptUipSetFragment.this.f5377n.setVisibility(0);
        }
    }

    /* renamed from: com.cyjh.elfin.ui.fragment.ScriptUipSetFragment$2 */
    /* loaded from: classes.dex */
    final class C13942 implements Observer<Integer> {
        C13942() {
        }

        /* renamed from: a */
        private void m6461a(@Nullable Integer num) {
            if (num == null) {
                return;
            }
            if (num.intValue() == 0) {
                ScriptUipSetFragment.this.m6455l();
            } else if (1 == num.intValue()) {
                try {
                    ScriptUipSetFragment.this.f5381s.mo7992d();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // android.arch.lifecycle.Observer
        public final /* synthetic */ void onChanged(@Nullable Integer num) {
            Integer num2 = num;
            if (num2 != null) {
                if (num2.intValue() == 0) {
                    ScriptUipSetFragment.this.m6455l();
                } else if (1 == num2.intValue()) {
                    try {
                        ScriptUipSetFragment.this.f5381s.mo7992d();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.ui.fragment.ScriptUipSetFragment$a */
    /* loaded from: classes.dex */
    public class CountDownTimerC1397a extends AbstractCountDownTimerC1136a {
        private CountDownTimerC1397a() {
            super(10);
        }

        /* synthetic */ CountDownTimerC1397a(ScriptUipSetFragment scriptUipSetFragment, byte b2) {
            this();
        }

        @Override // com.cyjh.common.p068c.AbstractCountDownTimerC1137b
        /* renamed from: a */
        protected final void mo4222a(int i) {
            if (ScriptUipSetFragment.this.isAdded()) {
                ScriptUipSetFragment.m6449h(ScriptUipSetFragment.this);
                SpannableString spannableString = new SpannableString(String.format(ScriptUipSetFragment.this.getString(R.string.ad_delete_btn), Integer.valueOf(i)));
                spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#ff7900")), 0, "点击关闭".length(), 17);
                spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#999999")), "点击关闭".length() + 1, "点击关闭".length() + 2, 17);
                if (ScriptUipSetFragment.this.f5376m != null) {
                    ScriptUipSetFragment.this.f5376m.setText(spannableString);
                }
            }
        }

        @Override // android.os.CountDownTimer
        public final void onFinish() {
            ScriptUipSetFragment.m6451i(ScriptUipSetFragment.this);
            ScriptUipSetFragment.this.f5374k.setVisibility(8);
        }
    }

    /* renamed from: a */
    private /* synthetic */ void m6435a(int i) {
        if (101 == i) {
            this.f5367b = false;
        }
    }

    /* renamed from: a */
    private void m6436a(String str) {
        if (MqRunner.getInstance().isScriptStarted() || TextUtils.isEmpty(str)) {
            return;
        }
        String m4372a = C1162e.m4372a(str);
        C1151ad.m4325c(f5364d, "updateScriptSettings --> 1 服务端命令:脚本设置更新 encoding=" + m4372a + ",scriptSetting=" + str);
        try {
            String m4457a = C1171n.m4457a(str);
            File file = new File(C1172o.m4483a(getActivity().getFilesDir().getAbsolutePath(), InterfaceC1224a.f4452t));
            Script script = C1285c.m5955f().f4851a;
            boolean m4462a = C1171n.m4462a(script.getCfgFile(), m4457a, "UTF-8");
            script.setCfgFile(file.getAbsoluteFile());
            C1151ad.m4325c(f5364d, "updateScriptSettings --> 2 服务端命令:脚本设置更新 toUtf8Result=" + m4457a + "\ncfgFile=" + file.getAbsolutePath() + ",result=" + m4462a);
            long length = script.getUipFile().length();
            if (script.getUipFile().exists() && length > 0) {
                LinearLayout mo7987a = this.f5381s.mo7987a();
                this.f5381s.mo7989b();
                this.f5370g.removeAllViews();
                this.f5370g.addView(mo7987a);
            }
            if (this.f5381s != null) {
                this.f5381s.mo7992d();
                this.f5381s.mo7990b(m4457a);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m6438b(ScriptUipSetFragment scriptUipSetFragment) {
        if (scriptUipSetFragment.f5379p == null) {
            scriptUipSetFragment.f5379p = new CountDownTimerC1397a(scriptUipSetFragment, (byte) 0);
        }
        scriptUipSetFragment.f5379p.start();
    }

    /* renamed from: c */
    private void m6440c() {
        if (Build.VERSION.SDK_INT < 23) {
            m6442d();
            return;
        }
        try {
            boolean canDrawOverlays = Settings.canDrawOverlays(getActivity());
            if (Build.VERSION.SDK_INT >= 26) {
                canDrawOverlays = !C1149ab.m4306a().m4314b(ViewOnClickListenerC1317e.f5050e, (Boolean) true);
            }
            C1151ad.m4325c(f5364d, "showRunFloatJudgeOperate --> canDrawOverlays=" + canDrawOverlays);
            if (canDrawOverlays) {
                m6442d();
            } else {
                new ViewOnClickListenerC1317e(getActivity(), new C1398a(this)).show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    private void m6442d() {
        C1151ad.m4325c(f5364d, "showRunFloat -->");
        ScriptUipSetModel scriptUipSetModel = this.f5368c;
        boolean z = false;
        z = false;
        scriptUipSetModel.f5417a = new ScriptUipSetModel.RunnableC1409b(scriptUipSetModel, z ? (byte) 1 : (byte) 0);
        C1463b.m6773a().m6772a(scriptUipSetModel.f5417a);
        if (C1743c.a.f6878a.mo7759c().mo7753a()) {
            if (C1468e.m6828a()) {
                m6444e();
                return;
            } else {
                new DialogC1316d(getActivity()).show();
                return;
            }
        }
        if (C1468e.m6828a() && C1468e.m6829b()) {
            z = true;
        }
        C1151ad.m4325c(f5364d, "showRunFloat isRoot：" + z);
        if (z) {
            m6444e();
        } else {
            C1743c.a.f6878a.mo7759c().mo7750a((Activity) getActivity());
        }
    }

    /* renamed from: e */
    private void m6444e() {
        C1239a.m5546a();
        if (!C1239a.m5549a(AppContext.m5350a())) {
            C1239a.m5546a().m5565b(getActivity());
            return;
        }
        if (C1285c.m5955f().f4853d == 0) {
            C1285c.m5955f().f4853d = 1;
        }
        C1260k.m5735a(10);
        getActivity().moveTaskToBack(true);
    }

    /* renamed from: f */
    private void m6445f() {
        this.f5382t = new C1734b(getActivity(), this.f5374k);
        this.f5382t.m7942a(3, new C13931());
        this.f5382t.m7943b();
    }

    /* renamed from: g */
    private void m6448g() {
        this.f5368c.f5418b.observe(this, new C13942());
    }

    /* renamed from: h */
    static /* synthetic */ int m6449h(ScriptUipSetFragment scriptUipSetFragment) {
        int i = scriptUipSetFragment.f5378o;
        scriptUipSetFragment.f5378o = i + 1;
        return i;
    }

    /* renamed from: h */
    private void m6450h() {
        this.f5371h.setOnClickListener(this);
        this.f5369f.findViewById(R.id.btn_option_getmoretime).setOnClickListener(this);
        this.f5376m.setOnClickListener(this);
        this.f5375l.setOnClickListener(this);
    }

    /* renamed from: i */
    static /* synthetic */ int m6451i(ScriptUipSetFragment scriptUipSetFragment) {
        scriptUipSetFragment.f5378o = 0;
        return 0;
    }

    /* renamed from: i */
    private void m6452i() {
        ScriptUipSetModel scriptUipSetModel = this.f5368c;
        if (C1285c.m5955f().f4852c) {
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "sdCardScriptFiles\n", "UTF-8");
            scriptUipSetModel.m6505a();
        } else {
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles\n", "UTF-8");
            scriptUipSetModel.m6506b();
        }
        C2772c.m12482a().m12503a(this);
    }

    /* renamed from: j */
    private void m6453j() {
        Button button;
        int i;
        this.f5370g = (LinearLayout) this.f5369f.findViewById(R.id.uip_linearlayout);
        this.f5371h = (Button) this.f5369f.findViewById(R.id.btn_option_start);
        this.f5372i = (Button) this.f5369f.findViewById(R.id.btn_option_getmoretime);
        this.f5373j = (TextView) this.f5369f.findViewById(R.id.tv_option_duetime);
        this.f5374k = (RelativeLayout) this.f5369f.findViewById(R.id.rl_bottom_content_ad);
        this.f5375l = (ImageView) this.f5369f.findViewById(R.id.id_img_ad);
        this.f5376m = (TextView) this.f5369f.findViewById(R.id.tv_delete_ad);
        this.f5377n = (TextView) this.f5369f.findViewById(R.id.tv_ilfyad_mark);
        this.f5376m.setTextColor(Color.parseColor("#ffffff"));
        if (C1238c.f4604d) {
            button = this.f5372i;
            i = 0;
        } else {
            button = this.f5372i;
            i = 8;
        }
        button.setVisibility(i);
        this.f5373j.setVisibility(i);
        m6454k();
        Point m4247a = C1147a.m4247a(getContext());
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f5370g.getLayoutParams();
        int i2 = ((int) (m4247a.x - (m4247a.x * 0.9f))) / 2;
        layoutParams.leftMargin = i2;
        layoutParams.rightMargin = i2;
        this.f5370g.setLayoutParams(layoutParams);
    }

    /* renamed from: k */
    private void m6454k() {
        SpannableString spannableString;
        String spannableString2;
        if (C1238c.f4604d) {
            TextView textView = this.f5373j;
            C1238c m5531a = C1238c.m5531a();
            if (!TextUtils.isEmpty(m5531a.f4607a) && m5531a.f4608b != -1) {
                long currentTimeMillis = (m5531a.f4608b - (System.currentTimeMillis() / 1000)) / 60;
                spannableString2 = currentTimeMillis > 0 ? C1169l.m4449a(AppContext.m5350a(), currentTimeMillis) : "";
            } else if (ParamsWrap.getParamsWrap().onceTryMinute <= 0) {
                m5531a.f4609c = 3;
                spannableString2 = AppContext.m5350a().getString(R.string.optionfragment_duetime_no);
            } else {
                m5531a.f4609c = 1;
                String format = String.format(AppContext.m5350a().getString(R.string.optionfragment_unpaid), Integer.valueOf(ParamsWrap.getParamsWrap().onceTryMinute));
                String str = ParamsWrap.getParamsWrap().onceTryMinute + "分钟";
                if (TextUtils.isEmpty(str)) {
                    spannableString = null;
                } else {
                    int indexOf = format.indexOf(str);
                    int length = (str.length() + indexOf) - 2;
                    SpannableString spannableString3 = new SpannableString(format);
                    spannableString3.setSpan(new StyleSpan(1), indexOf, length, 17);
                    spannableString3.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf, length, 17);
                    if (!TextUtils.isEmpty("")) {
                        int indexOf2 = format.indexOf("");
                        int length2 = ("".length() + indexOf2) - 2;
                        spannableString3.setSpan(new StyleSpan(1), indexOf2, length2, 17);
                        spannableString3.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf2, length2, 17);
                        if (!TextUtils.isEmpty("")) {
                            int indexOf3 = format.indexOf("");
                            int length3 = ("".length() + indexOf3) - 1;
                            spannableString3.setSpan(new StyleSpan(1), indexOf3, length3, 17);
                            spannableString3.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf3, length3, 17);
                        }
                    }
                    spannableString = spannableString3;
                }
                spannableString2 = spannableString.toString();
            }
            textView.setText(spannableString2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m6455l() {
        Script script = C1285c.m5955f().f4851a;
        this.f5381s = C1752d.m8024a(getContext(), script.getUiFile().getPath(), script.getUipFile().getPath(), script.getCfgFile().getPath());
        try {
            LinearLayout mo7987a = this.f5381s.mo7987a();
            this.f5381s.mo7991c();
            this.f5381s.mo7992d();
            this.f5370g.removeAllViews();
            this.f5370g.addView(mo7987a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: m */
    private void m6456m() throws Exception {
        if (this.f5368c != null) {
            this.f5368c.m6507c();
        }
    }

    /* renamed from: n */
    private void m6457n() {
        try {
            this.f5371h.performClick();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: o */
    private void m6458o() {
        if (this.f5379p == null) {
            this.f5379p = new CountDownTimerC1397a(this, (byte) 0);
        }
        this.f5379p.start();
    }

    /* renamed from: p */
    private void m6459p() {
        if (this.f5379p != null) {
            this.f5378o = 0;
            this.f5379p.cancel();
            this.f5379p = null;
        }
    }

    @Override // com.cyjh.common.base.fragment.BaseFragement
    /* renamed from: a */
    public final int mo4220a() {
        return R.layout.fragment_scriptuip_set;
    }

    @Override // com.cyjh.common.base.fragment.BaseFragement, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ScriptUipSetModel scriptUipSetModel = this.f5368c;
        if (C1285c.m5955f().f4852c) {
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "sdCardScriptFiles\n", "UTF-8");
            scriptUipSetModel.m6505a();
        } else {
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles\n", "UTF-8");
            scriptUipSetModel.m6506b();
        }
        C2772c.m12482a().m12503a(this);
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 2) {
            C1743c.a.f6878a.mo7759c().mo7751a((Context) getActivity());
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.id_img_ad) {
            this.f5382t.m7945d();
            m6459p();
            return;
        }
        if (id != R.id.btn_option_start) {
            if (id == R.id.btn_option_getmoretime) {
                FragmentActivity activity = getActivity();
                String m5543b = C1238c.m5531a().m5543b();
                Intent intent = new Intent(activity, (Class<?>) BindRegisterCodeActivity.class);
                intent.addFlags(268435456);
                intent.putExtra(BindRegisterCodeActivity.class.getCanonicalName(), m5543b);
                activity.startActivity(intent);
                return;
            }
            if (id != R.id.tv_delete_ad) {
                return;
            }
            if (this.f5378o < 5) {
                this.f5382t.m7945d();
                m6459p();
                return;
            } else {
                m6459p();
                this.f5374k.setVisibility(8);
                return;
            }
        }
        this.f5367b = true;
        if (Build.VERSION.SDK_INT < 23) {
            m6442d();
            return;
        }
        try {
            boolean canDrawOverlays = Settings.canDrawOverlays(getActivity());
            if (Build.VERSION.SDK_INT >= 26) {
                canDrawOverlays = !C1149ab.m4306a().m4314b(ViewOnClickListenerC1317e.f5050e, (Boolean) true);
            }
            C1151ad.m4325c(f5364d, "showRunFloatJudgeOperate --> canDrawOverlays=" + canDrawOverlays);
            if (canDrawOverlays) {
                m6442d();
            } else {
                new ViewOnClickListenerC1317e(getActivity(), new C1398a(this)).show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.cyjh.common.base.fragment.BaseFragement, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        C2772c.m12482a().m12505b(this);
        this.f5380r.removeCallbacksAndMessages(null);
        if (this.f5382t != null) {
            this.f5382t.m7946e();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public void onMessageMainThread(MsgItem msgItem) {
        int msgType = msgItem.getMsgType();
        if (msgType == 1008) {
            m6455l();
            C1546c m6918a = C1546c.m6918a();
            m6918a.f5833c = new C1288a.AnonymousClass3();
            m6918a.m6924a(AppContext.m5350a(), C1238c.m5531a().m5543b(), C1285c.m5955f().f4851a.getId(), InterfaceC1133a.f3917S);
            return;
        }
        if (msgType != 10081) {
            return;
        }
        try {
            this.f5381s.mo7991c();
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public void onMessageThreadMain(MsgItem.BindRegCodeBus bindRegCodeBus) {
        if (bindRegCodeBus.getExpireTime() > 0) {
            C1752d.m8029a(C1238c.m5531a().m5543b());
            C1238c.m5531a().f4608b = bindRegCodeBus.getExpireTime();
            C1238c.m5531a().f4609c = 0;
        } else if (bindRegCodeBus.getExpireTime() == -1) {
            C1238c.m5531a().f4608b = bindRegCodeBus.getExpireTime();
        }
        m6454k();
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd(ScriptUipSetFragment.class.getCanonicalName());
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public void onReceiveScriptUIEvent(C1141b c1141b) {
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "ScriptUipSetFragment onReceiveScriptUIEvent -->");
        C1152ae.m4331b(getActivity(), "onReceiveScriptUIEvent --> 更新Script UI");
        C1151ad.m4325c(f5364d, "onReceiveScriptUIEvent --> 更新Script UI");
        m6455l();
        if (c1141b.f4021a != C1263n.f4709a) {
            if (c1141b.f4021a == C1263n.f4712d) {
                this.f5380r.postDelayed(new Runnable() { // from class: com.cyjh.elfin.ui.fragment.ScriptUipSetFragment.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        C1308a.m6120a().m6124a(4);
                    }
                }, 1000L);
                return;
            }
            return;
        }
        String m5784a = C1264o.m5784a(getActivity(), C1285c.m5955f().f4852c);
        String m5786b = C1264o.m5786b(getActivity());
        String m4372a = C1162e.m4372a(m5784a);
        String m4372a2 = C1162e.m4372a(m5786b);
        C1151ad.m4325c(f5364d, "onReceiveScriptUIEvent -->scriptCFGContent=" + m5786b + ",scriptUIPContent=" + m5784a);
        C1151ad.m4325c(f5364d, "onReceiveScriptUIEvent -->scriptUIPContentEncoding=" + m4372a + ",scriptCFGContentEncoding=" + m4372a2);
        C1562s.m6981a().m6986a(getActivity(), C1285c.m5955f().f4851a.getId(), m5784a, m5786b, new C1562s.a() { // from class: com.cyjh.elfin.ui.fragment.ScriptUipSetFragment.3
            @Override // com.cyjh.http.p096c.p099c.C1562s.a
            /* renamed from: a */
            public final void mo6462a(String str) {
                C1151ad.m4325c(ScriptUipSetFragment.f5364d, "onReceiveScriptUIEvent --> onSuccess=" + str);
            }

            @Override // com.cyjh.http.p096c.p099c.C1562s.a
            /* renamed from: b */
            public final void mo6463b(String str) {
                C1151ad.m4325c(ScriptUipSetFragment.f5364d, "onReceiveScriptUIEvent --> onFailure=" + str + str);
            }
        });
        C1149ab.m4306a().m4313a(C1264o.f4732b, C1264o.m5787b(getActivity(), C1285c.m5955f().f4852c));
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public void onReceiveSocketMessage(C1709a c1709a) {
        C1308a m6120a;
        int i;
        int i2 = c1709a.f6679a;
        if (i2 == 10101) {
            C1151ad.m4325c(f5364d, "onReceiveSocketMessage --> 服务端命令:脚本启动");
            this.f5371h.performClick();
            m6120a = C1308a.m6120a();
            i = 2;
        } else {
            if (i2 != 10103) {
                if (i2 != 10107) {
                    return;
                }
                C1151ad.m4325c(f5364d, "onReceiveSocketMessage --> 服务端命令:脚本设置更新");
                String str = c1709a.f6682d;
                if (MqRunner.getInstance().isScriptStarted() || TextUtils.isEmpty(str)) {
                    return;
                }
                String m4372a = C1162e.m4372a(str);
                C1151ad.m4325c(f5364d, "updateScriptSettings --> 1 服务端命令:脚本设置更新 encoding=" + m4372a + ",scriptSetting=" + str);
                try {
                    String m4457a = C1171n.m4457a(str);
                    File file = new File(C1172o.m4483a(getActivity().getFilesDir().getAbsolutePath(), InterfaceC1224a.f4452t));
                    Script script = C1285c.m5955f().f4851a;
                    boolean m4462a = C1171n.m4462a(script.getCfgFile(), m4457a, "UTF-8");
                    script.setCfgFile(file.getAbsoluteFile());
                    C1151ad.m4325c(f5364d, "updateScriptSettings --> 2 服务端命令:脚本设置更新 toUtf8Result=" + m4457a + "\ncfgFile=" + file.getAbsolutePath() + ",result=" + m4462a);
                    long length = script.getUipFile().length();
                    if (script.getUipFile().exists() && length > 0) {
                        LinearLayout mo7987a = this.f5381s.mo7987a();
                        this.f5381s.mo7989b();
                        this.f5370g.removeAllViews();
                        this.f5370g.addView(mo7987a);
                    }
                    if (this.f5381s != null) {
                        this.f5381s.mo7992d();
                        this.f5381s.mo7990b(m4457a);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            C1151ad.m4325c(f5364d, "onReceiveSocketMessage --> 服务端命令:脚本停止");
            this.f5371h.performClick();
            m6120a = C1308a.m6120a();
            i = 3;
        }
        m6120a.m6124a(i);
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        MobclickAgent.onPageStart(ScriptUipSetFragment.class.getCanonicalName());
        this.f5367b = false;
        m6454k();
    }

    @Override // com.cyjh.common.base.fragment.BaseFragement, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        setUserVisibleHint(true);
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(@NonNull View view, Bundle bundle) {
        Button button;
        int i;
        super.onViewCreated(view, bundle);
        if (getView() != null) {
            this.f5369f = getView();
            this.f5368c = (ScriptUipSetModel) ViewModelProviders.m16of(this).get(ScriptUipSetModel.class);
            this.f5368c.f5418b.observe(this, new C13942());
            this.f5370g = (LinearLayout) this.f5369f.findViewById(R.id.uip_linearlayout);
            this.f5371h = (Button) this.f5369f.findViewById(R.id.btn_option_start);
            this.f5372i = (Button) this.f5369f.findViewById(R.id.btn_option_getmoretime);
            this.f5373j = (TextView) this.f5369f.findViewById(R.id.tv_option_duetime);
            this.f5374k = (RelativeLayout) this.f5369f.findViewById(R.id.rl_bottom_content_ad);
            this.f5375l = (ImageView) this.f5369f.findViewById(R.id.id_img_ad);
            this.f5376m = (TextView) this.f5369f.findViewById(R.id.tv_delete_ad);
            this.f5377n = (TextView) this.f5369f.findViewById(R.id.tv_ilfyad_mark);
            this.f5376m.setTextColor(Color.parseColor("#ffffff"));
            if (C1238c.f4604d) {
                button = this.f5372i;
                i = 0;
            } else {
                button = this.f5372i;
                i = 8;
            }
            button.setVisibility(i);
            this.f5373j.setVisibility(i);
            m6454k();
            Point m4247a = C1147a.m4247a(getContext());
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f5370g.getLayoutParams();
            int i2 = ((int) (m4247a.x - (m4247a.x * 0.9f))) / 2;
            layoutParams.leftMargin = i2;
            layoutParams.rightMargin = i2;
            this.f5370g.setLayoutParams(layoutParams);
            if (!C1733a.m7908a().m7912b()) {
                this.f5382t = new C1734b(getActivity(), this.f5374k);
                this.f5382t.m7942a(3, new C13931());
                this.f5382t.m7943b();
            }
            this.f5371h.setOnClickListener(this);
            this.f5369f.findViewById(R.id.btn_option_getmoretime).setOnClickListener(this);
            this.f5376m.setOnClickListener(this);
            this.f5375l.setOnClickListener(this);
        }
    }
}
