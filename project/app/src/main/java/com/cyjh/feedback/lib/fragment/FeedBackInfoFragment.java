package com.cyjh.feedback.lib.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.os.EnvironmentCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.cyjh.common.util.C1148aa;
import com.cyjh.feedback.lib.activity.ImageSelectActivity;
import com.cyjh.feedback.lib.base.BaseFragment;
import com.cyjh.feedback.lib.p089a.C1453b;
import com.cyjh.feedback.lib.p090b.DialogC1456c;
import com.cyjh.feedback.lib.p090b.ViewOnClickListenerC1455b;
import com.cyjh.feedback.lib.p093e.C1464a;
import com.cyjh.feedback.libraryfeedbackinfo.C1478R;
import com.cyjh.http.bean.request.FeedbackRequestInfo;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p099c.C1554k;
import com.cyjh.http.p104e.C1579a;
import com.umeng.analytics.MobclickAgent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class FeedBackInfoFragment extends BaseFragment implements View.OnClickListener {

    /* renamed from: a */
    public static final int f5715a = 256;

    /* renamed from: b */
    public static final int f5716b = 0;

    /* renamed from: c */
    public static final int f5717c = 1;

    /* renamed from: d */
    public static final int f5718d = 0;

    /* renamed from: e */
    public static final String f5719e = "feedbackTips";

    /* renamed from: f */
    public static final String f5720f = "isPhoneRoot";

    /* renamed from: g */
    private static final int f5721g = 1;

    /* renamed from: h */
    private static final int f5722h = 2;

    /* renamed from: i */
    private static final int f5723i = 3;

    /* renamed from: j */
    private static final int f5724j = 4;

    /* renamed from: k */
    private static final int f5725k = 8;

    /* renamed from: l */
    private static final int f5726l = 16;

    /* renamed from: x */
    private static final int f5727x = 4;

    /* renamed from: A */
    private boolean f5728A;

    /* renamed from: m */
    private GridView f5729m;

    /* renamed from: n */
    private C1453b f5730n;

    /* renamed from: o */
    private List<String> f5731o = new ArrayList();

    /* renamed from: p */
    private EditText f5732p;

    /* renamed from: q */
    private EditText f5733q;

    /* renamed from: r */
    private TextView f5734r;

    /* renamed from: s */
    private TextView f5735s;

    /* renamed from: t */
    private DialogC1456c f5736t;

    /* renamed from: u */
    private FeedbackRequestInfo f5737u;

    /* renamed from: v */
    private TextView f5738v;

    /* renamed from: w */
    private View f5739w;

    /* renamed from: y */
    private C1554k f5740y;

    /* renamed from: z */
    private String f5741z;

    /* renamed from: com.cyjh.feedback.lib.fragment.FeedBackInfoFragment$1 */
    /* loaded from: classes.dex */
    final class C14701 implements ViewOnClickListenerC1455b.a {
        C14701() {
        }

        @Override // com.cyjh.feedback.lib.p090b.ViewOnClickListenerC1455b.a
        /* renamed from: a */
        public final void mo6717a(int i) {
            FragmentActivity activity;
            int i2;
            if (FeedBackInfoFragment.this.getActivity() != null) {
                FeedBackInfoFragment.this.f5731o.clear();
                if (i == 1) {
                    activity = FeedBackInfoFragment.this.getActivity();
                    i2 = -1;
                } else {
                    activity = FeedBackInfoFragment.this.getActivity();
                    i2 = 0;
                }
                activity.setResult(i2);
                FeedBackInfoFragment.this.getActivity().finish();
            }
        }
    }

    /* renamed from: com.cyjh.feedback.lib.fragment.FeedBackInfoFragment$2 */
    /* loaded from: classes.dex */
    final class C14712 implements TextWatcher {
        C14712() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            FeedBackInfoFragment.this.f5735s.setText(FeedBackInfoFragment.this.getString(C1478R.string.feedback_num_hint, Integer.valueOf(charSequence.length())));
        }
    }

    /* renamed from: com.cyjh.feedback.lib.fragment.FeedBackInfoFragment$3 */
    /* loaded from: classes.dex */
    final class C14723 implements AdapterView.OnItemClickListener {
        C14723() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == FeedBackInfoFragment.this.f5731o.size()) {
                FeedBackInfoFragment.this.startActivityForResult(new Intent(FeedBackInfoFragment.this.getActivity(), (Class<?>) ImageSelectActivity.class), 256);
            }
        }
    }

    /* renamed from: com.cyjh.feedback.lib.fragment.FeedBackInfoFragment$4 */
    /* loaded from: classes.dex */
    final class C14734 implements C1453b.a {
        C14734() {
        }

        @Override // com.cyjh.feedback.lib.p089a.C1453b.a
        /* renamed from: a */
        public final void mo6705a(int i) {
            FeedBackInfoFragment.this.f5734r.setText(FeedBackInfoFragment.this.getString(C1478R.string.image_add, Integer.valueOf(i)));
        }
    }

    /* renamed from: a */
    public static FeedBackInfoFragment m6832a(String str, boolean z) {
        FeedBackInfoFragment feedBackInfoFragment = new FeedBackInfoFragment();
        Bundle bundle = new Bundle();
        bundle.putString(f5719e, str);
        bundle.putBoolean(f5720f, z);
        feedBackInfoFragment.setArguments(bundle);
        return feedBackInfoFragment;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0008. Please report as an issue. */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: a */
    private String m6833a(int i) {
        int i2;
        if (i == 8) {
            i2 = C1478R.string.cpu_core_eight;
        } else if (i != 16) {
            switch (i) {
                case 1:
                    i2 = C1478R.string.cpu_core_one;
                    break;
                case 2:
                    i2 = C1478R.string.cpu_core_two;
                    break;
                case 3:
                    i2 = C1478R.string.cpu_core_three;
                    break;
                case 4:
                    i2 = C1478R.string.cpu_core_four;
                    break;
                default:
                    return null;
            }
        } else {
            i2 = C1478R.string.cpu_core_sixteen;
        }
        return getString(i2);
    }

    /* renamed from: a */
    private void m6835a(View view) {
        this.f5729m = (GridView) view.findViewById(C1478R.id.grid_view);
        this.f5732p = (EditText) view.findViewById(C1478R.id.id_et_qq_phone);
        this.f5733q = (EditText) view.findViewById(C1478R.id.id_et_feedback);
        this.f5734r = (TextView) view.findViewById(C1478R.id.id_tv_image_num);
        Button button = (Button) view.findViewById(C1478R.id.id_btn_commit_feedback);
        this.f5735s = (TextView) view.findViewById(C1478R.id.id_tv_feedback_input_font_num);
        this.f5730n = new C1453b(getActivity());
        this.f5729m.setAdapter((ListAdapter) this.f5730n);
        button.setOnClickListener(this);
        this.f5734r.setText(getString(C1478R.string.image_add, Integer.valueOf(this.f5731o.size())));
        this.f5735s.setText(getString(C1478R.string.feedback_num_hint, 0));
        this.f5738v = (TextView) view.findViewById(C1478R.id.id_complaints_qq);
        this.f5739w = view.findViewById(C1478R.id.id_line);
    }

    /* renamed from: b */
    private void m6837b() {
        ViewOnClickListenerC1455b viewOnClickListenerC1455b = new ViewOnClickListenerC1455b(getActivity(), this.f5737u, this.f5731o);
        viewOnClickListenerC1455b.show();
        viewOnClickListenerC1455b.f5625c = new C14701();
    }

    /* renamed from: c */
    private void m6839c() {
        this.f5736t = new DialogC1456c(getActivity());
        if (TextUtils.isEmpty(this.f5741z)) {
            this.f5738v.setVisibility(8);
            this.f5739w.setVisibility(8);
        } else {
            this.f5739w.setVisibility(0);
            this.f5738v.setText(this.f5741z);
            this.f5738v.setVisibility(0);
        }
    }

    /* renamed from: d */
    private void m6840d() {
        this.f5733q.addTextChangedListener(new C14712());
        this.f5729m.setOnItemClickListener(new C14723());
        this.f5730n.f5611b = new C14734();
    }

    /* renamed from: e */
    private void m6841e() {
        if (this.f5737u == null) {
            this.f5736t.dismiss();
            return;
        }
        if (TextUtils.isEmpty(this.f5737u.Contact)) {
            this.f5737u.Contact = "0";
        }
        if (TextUtils.isEmpty(this.f5737u.Content)) {
            this.f5737u.Content = "0";
        }
        if (TextUtils.isEmpty(this.f5737u.AndoridVersion)) {
            this.f5737u.AndoridVersion = "0";
        }
        if (TextUtils.isEmpty(this.f5737u.CoreVersion)) {
            this.f5737u.CoreVersion = "0";
        }
        if (TextUtils.isEmpty(this.f5737u.SerialNumber)) {
            this.f5737u.SerialNumber = "0";
        }
        this.f5736t.dismiss();
        ViewOnClickListenerC1455b viewOnClickListenerC1455b = new ViewOnClickListenerC1455b(getActivity(), this.f5737u, this.f5731o);
        viewOnClickListenerC1455b.show();
        viewOnClickListenerC1455b.f5625c = new C14701();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x0175. Please report as an issue. */
    /* renamed from: f */
    private void m6842f() {
        String upperCase;
        int i;
        String trim = this.f5732p.getText().toString().trim();
        String trim2 = this.f5733q.getText().toString().trim();
        if (TextUtils.isEmpty(trim) && TextUtils.isEmpty(trim2)) {
            Toast.makeText(getActivity(), getString(C1478R.string.no_fill_info), 1).show();
            return;
        }
        if (this.f5737u == null) {
            this.f5737u = new FeedbackRequestInfo(C1487a.m6886a().m6893b(getActivity()));
        }
        this.f5737u.Contact = trim;
        this.f5737u.Content = trim2;
        this.f5737u.AndoridVersion = Build.VERSION.RELEASE;
        this.f5737u.DeviceModel = Build.MODEL;
        if (this.f5728A) {
            this.f5737u.RootStatus = 1;
        } else {
            this.f5737u.RootStatus = 0;
        }
        int i2 = C1579a.m7024b(getActivity()).x;
        int i3 = C1579a.m7024b(getActivity()).y;
        this.f5737u.Resolution = i2 + Marker.ANY_MARKER + i3;
        getActivity();
        this.f5737u.RAM = Formatter.formatFileSize(getActivity(), C1579a.m7012a());
        FeedbackRequestInfo feedbackRequestInfo = this.f5737u;
        WindowManager windowManager = (WindowManager) getActivity().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        feedbackRequestInfo.DPI = displayMetrics.densityDpi;
        this.f5737u.SerialNumber = Build.VERSION.SDK_INT >= 26 ? Build.getSerial() : Build.SERIAL;
        this.f5737u.CoreVersion = C1579a.m7025b();
        FeedbackRequestInfo feedbackRequestInfo2 = this.f5737u;
        String m4294a = C1148aa.m4294a("ro.miui.ui.version.name");
        C1148aa.f4036h = m4294a;
        if (TextUtils.isEmpty(m4294a)) {
            String m4294a2 = C1148aa.m4294a("ro.build.version.emui");
            C1148aa.f4036h = m4294a2;
            if (TextUtils.isEmpty(m4294a2)) {
                String m4294a3 = C1148aa.m4294a("ro.build.version.opporom");
                C1148aa.f4036h = m4294a3;
                if (TextUtils.isEmpty(m4294a3)) {
                    String m4294a4 = C1148aa.m4294a("ro.vivo.os.version");
                    C1148aa.f4036h = m4294a4;
                    if (TextUtils.isEmpty(m4294a4)) {
                        String m4294a5 = C1148aa.m4294a("ro.smartisan.version");
                        C1148aa.f4036h = m4294a5;
                        if (TextUtils.isEmpty(m4294a5)) {
                            String str = Build.DISPLAY;
                            C1148aa.f4036h = str;
                            if (str.toUpperCase().contains(C1148aa.f4031c)) {
                                upperCase = C1148aa.f4031c;
                            } else {
                                C1148aa.f4036h = EnvironmentCompat.MEDIA_UNKNOWN;
                                upperCase = Build.MANUFACTURER.toUpperCase();
                                if (TextUtils.isEmpty(upperCase)) {
                                    upperCase = "0";
                                }
                            }
                        } else {
                            upperCase = C1148aa.f4033e;
                        }
                    } else {
                        upperCase = C1148aa.f4034f;
                    }
                } else {
                    upperCase = C1148aa.f4032d;
                }
            } else {
                upperCase = C1148aa.f4030b;
            }
        } else {
            upperCase = C1148aa.f4029a;
        }
        feedbackRequestInfo2.SystemVersion = upperCase;
        int m6774a = C1464a.m6774a();
        String str2 = null;
        if (m6774a == 8) {
            i = C1478R.string.cpu_core_eight;
        } else {
            if (m6774a != 16) {
                switch (m6774a) {
                    case 1:
                        i = C1478R.string.cpu_core_one;
                        break;
                    case 2:
                        i = C1478R.string.cpu_core_two;
                        break;
                    case 3:
                        i = C1478R.string.cpu_core_three;
                        break;
                    case 4:
                        i = C1478R.string.cpu_core_four;
                        break;
                }
                String m6781b = C1464a.m6781b();
                if (TextUtils.isEmpty(str2) && !TextUtils.isEmpty(m6781b)) {
                    str2 = str2 + "，CPU型号：" + m6781b;
                } else if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(m6781b)) {
                    if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(m6781b)) {
                        str2 = "0";
                    } else {
                        str2 = "CPU型号：" + m6781b;
                    }
                }
                this.f5737u.Processor = str2;
            }
            i = C1478R.string.cpu_core_sixteen;
        }
        str2 = getString(i);
        String m6781b2 = C1464a.m6781b();
        if (TextUtils.isEmpty(str2)) {
        }
        if (!TextUtils.isEmpty(str2)) {
        }
        if (TextUtils.isEmpty(str2)) {
        }
        str2 = "0";
        this.f5737u.Processor = str2;
    }

    @Override // com.cyjh.feedback.lib.base.BaseFragment
    /* renamed from: a */
    public final int mo6718a() {
        return C1478R.layout.fragment_feedback_info;
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f5740y = new C1554k();
        this.f5740y.m6958a((Context) getActivity());
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList<String> stringArrayList;
        super.onActivityResult(i, i2, intent);
        if (i != 256 || i2 != -1 || intent == null || (stringArrayList = intent.getBundleExtra("bundle").getStringArrayList("image")) == null) {
            return;
        }
        int size = this.f5731o.size();
        if (stringArrayList.size() + size > 4) {
            Toast.makeText(getActivity(), getString(C1478R.string.img_num_limit, Integer.valueOf(size), Integer.valueOf(4 - size)), 1).show();
            stringArrayList.clear();
            return;
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!this.f5731o.contains(next)) {
                this.f5731o.add(next);
            }
        }
        this.f5734r.setText(getString(C1478R.string.image_add, Integer.valueOf(this.f5731o.size())));
        this.f5730n.f5610a = this.f5731o;
        this.f5729m.setAdapter((ListAdapter) this.f5730n);
        this.f5730n.notifyDataSetChanged();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String upperCase;
        int i;
        if (view.getId() == C1478R.id.id_btn_commit_feedback) {
            this.f5736t.show();
            String trim = this.f5732p.getText().toString().trim();
            String trim2 = this.f5733q.getText().toString().trim();
            if (TextUtils.isEmpty(trim) && TextUtils.isEmpty(trim2)) {
                Toast.makeText(getActivity(), getString(C1478R.string.no_fill_info), 1).show();
            } else {
                if (this.f5737u == null) {
                    this.f5737u = new FeedbackRequestInfo(C1487a.m6886a().m6893b(getActivity()));
                }
                this.f5737u.Contact = trim;
                this.f5737u.Content = trim2;
                this.f5737u.AndoridVersion = Build.VERSION.RELEASE;
                this.f5737u.DeviceModel = Build.MODEL;
                if (this.f5728A) {
                    this.f5737u.RootStatus = 1;
                } else {
                    this.f5737u.RootStatus = 0;
                }
                int i2 = C1579a.m7024b(getActivity()).x;
                int i3 = C1579a.m7024b(getActivity()).y;
                this.f5737u.Resolution = i2 + Marker.ANY_MARKER + i3;
                getActivity();
                this.f5737u.RAM = Formatter.formatFileSize(getActivity(), C1579a.m7012a());
                FeedbackRequestInfo feedbackRequestInfo = this.f5737u;
                WindowManager windowManager = (WindowManager) getActivity().getSystemService("window");
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                feedbackRequestInfo.DPI = displayMetrics.densityDpi;
                this.f5737u.SerialNumber = Build.VERSION.SDK_INT >= 26 ? Build.getSerial() : Build.SERIAL;
                this.f5737u.CoreVersion = C1579a.m7025b();
                FeedbackRequestInfo feedbackRequestInfo2 = this.f5737u;
                String m4294a = C1148aa.m4294a("ro.miui.ui.version.name");
                C1148aa.f4036h = m4294a;
                if (TextUtils.isEmpty(m4294a)) {
                    String m4294a2 = C1148aa.m4294a("ro.build.version.emui");
                    C1148aa.f4036h = m4294a2;
                    if (TextUtils.isEmpty(m4294a2)) {
                        String m4294a3 = C1148aa.m4294a("ro.build.version.opporom");
                        C1148aa.f4036h = m4294a3;
                        if (TextUtils.isEmpty(m4294a3)) {
                            String m4294a4 = C1148aa.m4294a("ro.vivo.os.version");
                            C1148aa.f4036h = m4294a4;
                            if (TextUtils.isEmpty(m4294a4)) {
                                String m4294a5 = C1148aa.m4294a("ro.smartisan.version");
                                C1148aa.f4036h = m4294a5;
                                if (TextUtils.isEmpty(m4294a5)) {
                                    String str = Build.DISPLAY;
                                    C1148aa.f4036h = str;
                                    if (str.toUpperCase().contains(C1148aa.f4031c)) {
                                        upperCase = C1148aa.f4031c;
                                    } else {
                                        C1148aa.f4036h = EnvironmentCompat.MEDIA_UNKNOWN;
                                        upperCase = Build.MANUFACTURER.toUpperCase();
                                        if (TextUtils.isEmpty(upperCase)) {
                                            upperCase = "0";
                                        }
                                    }
                                } else {
                                    upperCase = C1148aa.f4033e;
                                }
                            } else {
                                upperCase = C1148aa.f4034f;
                            }
                        } else {
                            upperCase = C1148aa.f4032d;
                        }
                    } else {
                        upperCase = C1148aa.f4030b;
                    }
                } else {
                    upperCase = C1148aa.f4029a;
                }
                feedbackRequestInfo2.SystemVersion = upperCase;
                int m6774a = C1464a.m6774a();
                String str2 = null;
                if (m6774a == 8) {
                    i = C1478R.string.cpu_core_eight;
                } else if (m6774a != 16) {
                    switch (m6774a) {
                        case 1:
                            i = C1478R.string.cpu_core_one;
                            break;
                        case 2:
                            i = C1478R.string.cpu_core_two;
                            break;
                        case 3:
                            i = C1478R.string.cpu_core_three;
                            break;
                        case 4:
                            i = C1478R.string.cpu_core_four;
                            break;
                    }
                } else {
                    i = C1478R.string.cpu_core_sixteen;
                }
                str2 = getString(i);
                String m6781b = C1464a.m6781b();
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(m6781b)) {
                    str2 = str2 + "，CPU型号：" + m6781b;
                } else if (TextUtils.isEmpty(str2) || !TextUtils.isEmpty(m6781b)) {
                    if (!TextUtils.isEmpty(str2) || TextUtils.isEmpty(m6781b)) {
                        str2 = "0";
                    } else {
                        str2 = "CPU型号：" + m6781b;
                    }
                }
                this.f5737u.Processor = str2;
            }
            if (this.f5737u == null) {
                this.f5736t.dismiss();
                return;
            }
            if (TextUtils.isEmpty(this.f5737u.Contact)) {
                this.f5737u.Contact = "0";
            }
            if (TextUtils.isEmpty(this.f5737u.Content)) {
                this.f5737u.Content = "0";
            }
            if (TextUtils.isEmpty(this.f5737u.AndoridVersion)) {
                this.f5737u.AndoridVersion = "0";
            }
            if (TextUtils.isEmpty(this.f5737u.CoreVersion)) {
                this.f5737u.CoreVersion = "0";
            }
            if (TextUtils.isEmpty(this.f5737u.SerialNumber)) {
                this.f5737u.SerialNumber = "0";
            }
            this.f5736t.dismiss();
            ViewOnClickListenerC1455b viewOnClickListenerC1455b = new ViewOnClickListenerC1455b(getActivity(), this.f5737u, this.f5731o);
            viewOnClickListenerC1455b.show();
            viewOnClickListenerC1455b.f5625c = new C14701();
        }
    }

    @Override // com.cyjh.feedback.lib.base.BaseFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f5741z = getArguments().getString(f5719e);
            this.f5728A = getArguments().getBoolean(f5720f);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.f5740y != null) {
            C1554k.m6957a();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd(FeedBackInfoFragment.class.getCanonicalName());
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        MobclickAgent.onPageStart(FeedBackInfoFragment.class.getCanonicalName());
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(@NonNull View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f5729m = (GridView) view.findViewById(C1478R.id.grid_view);
        this.f5732p = (EditText) view.findViewById(C1478R.id.id_et_qq_phone);
        this.f5733q = (EditText) view.findViewById(C1478R.id.id_et_feedback);
        this.f5734r = (TextView) view.findViewById(C1478R.id.id_tv_image_num);
        Button button = (Button) view.findViewById(C1478R.id.id_btn_commit_feedback);
        this.f5735s = (TextView) view.findViewById(C1478R.id.id_tv_feedback_input_font_num);
        this.f5730n = new C1453b(getActivity());
        this.f5729m.setAdapter((ListAdapter) this.f5730n);
        button.setOnClickListener(this);
        this.f5734r.setText(getString(C1478R.string.image_add, Integer.valueOf(this.f5731o.size())));
        this.f5735s.setText(getString(C1478R.string.feedback_num_hint, 0));
        this.f5738v = (TextView) view.findViewById(C1478R.id.id_complaints_qq);
        this.f5739w = view.findViewById(C1478R.id.id_line);
        this.f5736t = new DialogC1456c(getActivity());
        if (TextUtils.isEmpty(this.f5741z)) {
            this.f5738v.setVisibility(8);
            this.f5739w.setVisibility(8);
        } else {
            this.f5739w.setVisibility(0);
            this.f5738v.setText(this.f5741z);
            this.f5738v.setVisibility(0);
        }
        this.f5733q.addTextChangedListener(new C14712());
        this.f5729m.setOnItemClickListener(new C14723());
        this.f5730n.f5611b = new C14734();
    }
}
