package com.cyjh.elfin.p085ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.common.util.C1172o;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.ScriptLog;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p077e.p080c.C1256g;
import com.cyjh.elfin.p085ui.adpter.C1390a;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ScriptLogActivity extends BaseActivity implements View.OnClickListener, AdapterView.OnItemClickListener {

    /* renamed from: b */
    private TitleView f5159b;

    /* renamed from: c */
    private ListView f5160c;

    /* renamed from: d */
    private Button f5161d;

    /* renamed from: e */
    private Button f5162e;

    /* renamed from: f */
    private ArrayList<ScriptLog> f5163f;

    /* renamed from: g */
    private C1390a f5164g;

    /* renamed from: h */
    private boolean f5165h = false;

    /* renamed from: com.cyjh.elfin.ui.activity.ScriptLogActivity$a */
    /* loaded from: classes.dex */
    private class C1349a implements TitleView.InterfaceC1421a {
        private C1349a() {
        }

        /* synthetic */ C1349a(ScriptLogActivity scriptLogActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            ScriptLogActivity.this.finish();
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.ScriptLogActivity$b */
    /* loaded from: classes.dex */
    private class C1350b implements TitleView.InterfaceC1422b {
        private C1350b() {
        }

        /* synthetic */ C1350b(ScriptLogActivity scriptLogActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1422b
        /* renamed from: a */
        public final void mo6285a() {
            TitleView titleView;
            int i;
            ScriptLogActivity.this.f5165h = !ScriptLogActivity.this.f5165h;
            if (ScriptLogActivity.this.f5165h) {
                ScriptLogActivity.this.f5161d.setVisibility(0);
                ScriptLogActivity.this.f5162e.setVisibility(0);
                titleView = ScriptLogActivity.this.f5159b;
                i = R.drawable.ic_cancel;
            } else {
                ScriptLogActivity.this.f5161d.setVisibility(8);
                ScriptLogActivity.this.f5162e.setVisibility(8);
                titleView = ScriptLogActivity.this.f5159b;
                i = R.drawable.ic_manage;
            }
            titleView.setRightImage(i);
            Iterator it = ScriptLogActivity.this.f5163f.iterator();
            while (it.hasNext()) {
                ((ScriptLog) it.next()).setSelect(false);
            }
            ScriptLogActivity.this.f5164g.f5337a = ScriptLogActivity.this.f5165h;
            ScriptLogActivity.this.f5164g.notifyDataSetChanged();
        }
    }

    /* renamed from: b */
    private void m6276b() {
        this.f5159b = (TitleView) findViewById(R.id.titleview_scriptlog);
        this.f5159b.setTitleText(R.string.scriptlog);
        this.f5159b.setleftImage(R.drawable.ic_back);
        this.f5159b.setOnLeftImageViewListener(new C1349a(this, 0 == true ? 1 : 0));
        this.f5159b.setRightImage(R.drawable.ic_manage);
        this.f5159b.setOnRightImageViewListener(new C1350b(this, 0 == true ? 1 : 0));
        this.f5160c = (ListView) findViewById(R.id.listview_scriptlog);
        this.f5160c.setOnItemClickListener(this);
        File[] listFiles = new File(AppContext.m5350a().f4564c).listFiles(new C1172o.a(InterfaceC1224a.f4440E));
        this.f5163f = new ArrayList<>();
        if (listFiles != null) {
            Arrays.sort(listFiles, new C1256g());
            for (File file : listFiles) {
                ScriptLog scriptLog = new ScriptLog();
                scriptLog.setSize(C1172o.m4478a(file.length()));
                scriptLog.setName(file.getName());
                scriptLog.setFile(file);
                this.f5163f.add(scriptLog);
            }
        }
        this.f5164g = new C1390a(this, this.f5163f);
        this.f5160c.setAdapter((ListAdapter) this.f5164g);
        this.f5161d = (Button) findViewById(R.id.btn_scriptlog_removeall);
        this.f5162e = (Button) findViewById(R.id.btn_scriptlog_selectall);
        this.f5161d.setOnClickListener(this);
        this.f5162e.setOnClickListener(this);
    }

    /* renamed from: c */
    private void m6278c() {
        this.f5159b = (TitleView) findViewById(R.id.titleview_scriptlog);
        this.f5159b.setTitleText(R.string.scriptlog);
        this.f5159b.setleftImage(R.drawable.ic_back);
        byte b2 = 0;
        this.f5159b.setOnLeftImageViewListener(new C1349a(this, b2));
        this.f5159b.setRightImage(R.drawable.ic_manage);
        this.f5159b.setOnRightImageViewListener(new C1350b(this, b2));
    }

    /* renamed from: d */
    private void m6280d() {
        this.f5160c = (ListView) findViewById(R.id.listview_scriptlog);
        this.f5160c.setOnItemClickListener(this);
        File[] listFiles = new File(AppContext.m5350a().f4564c).listFiles(new C1172o.a(InterfaceC1224a.f4440E));
        this.f5163f = new ArrayList<>();
        if (listFiles != null) {
            Arrays.sort(listFiles, new C1256g());
            for (File file : listFiles) {
                ScriptLog scriptLog = new ScriptLog();
                scriptLog.setSize(C1172o.m4478a(file.length()));
                scriptLog.setName(file.getName());
                scriptLog.setFile(file);
                this.f5163f.add(scriptLog);
            }
        }
        this.f5164g = new C1390a(this, this.f5163f);
        this.f5160c.setAdapter((ListAdapter) this.f5164g);
    }

    /* renamed from: e */
    private void m6282e() {
        File[] listFiles = new File(AppContext.m5350a().f4564c).listFiles(new C1172o.a(InterfaceC1224a.f4440E));
        this.f5163f = new ArrayList<>();
        if (listFiles != null) {
            Arrays.sort(listFiles, new C1256g());
            for (File file : listFiles) {
                ScriptLog scriptLog = new ScriptLog();
                scriptLog.setSize(C1172o.m4478a(file.length()));
                scriptLog.setName(file.getName());
                scriptLog.setFile(file);
                this.f5163f.add(scriptLog);
            }
        }
    }

    /* renamed from: f */
    private void m6284f() {
        boolean z;
        Iterator<ScriptLog> it = this.f5163f.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            } else if (it.next().isSelect()) {
                z = true;
                break;
            }
        }
        if (!z) {
            AppContext.m5350a().m5362a(R.string.scriptlog_unselect);
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ScriptLog> it2 = this.f5163f.iterator();
        while (it2.hasNext()) {
            ScriptLog next = it2.next();
            if (next.isSelect() && next.getFile().delete()) {
                arrayList.add(next);
            }
        }
        this.f5163f.removeAll(arrayList);
        this.f5164g.notifyDataSetChanged();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z = true;
        switch (view.getId()) {
            case R.id.btn_scriptlog_removeall /* 2131755236 */:
                Iterator<ScriptLog> it = this.f5163f.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                    } else if (it.next().isSelect()) {
                    }
                }
                if (!z) {
                    AppContext.m5350a().m5362a(R.string.scriptlog_unselect);
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<ScriptLog> it2 = this.f5163f.iterator();
                while (it2.hasNext()) {
                    ScriptLog next = it2.next();
                    if (next.isSelect() && next.getFile().delete()) {
                        arrayList.add(next);
                    }
                }
                this.f5163f.removeAll(arrayList);
                this.f5164g.notifyDataSetChanged();
                return;
            case R.id.btn_scriptlog_selectall /* 2131755237 */:
                Iterator<ScriptLog> it3 = this.f5163f.iterator();
                while (it3.hasNext()) {
                    it3.next().setSelect(true);
                }
                this.f5164g.notifyDataSetChanged();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_scriptlog);
        this.f5159b = (TitleView) findViewById(R.id.titleview_scriptlog);
        this.f5159b.setTitleText(R.string.scriptlog);
        this.f5159b.setleftImage(R.drawable.ic_back);
        this.f5159b.setOnLeftImageViewListener(new C1349a(this, 0 == true ? 1 : 0));
        this.f5159b.setRightImage(R.drawable.ic_manage);
        this.f5159b.setOnRightImageViewListener(new C1350b(this, 0 == true ? 1 : 0));
        this.f5160c = (ListView) findViewById(R.id.listview_scriptlog);
        this.f5160c.setOnItemClickListener(this);
        File[] listFiles = new File(AppContext.m5350a().f4564c).listFiles(new C1172o.a(InterfaceC1224a.f4440E));
        this.f5163f = new ArrayList<>();
        if (listFiles != null) {
            Arrays.sort(listFiles, new C1256g());
            for (File file : listFiles) {
                ScriptLog scriptLog = new ScriptLog();
                scriptLog.setSize(C1172o.m4478a(file.length()));
                scriptLog.setName(file.getName());
                scriptLog.setFile(file);
                this.f5163f.add(scriptLog);
            }
        }
        this.f5164g = new C1390a(this, this.f5163f);
        this.f5160c.setAdapter((ListAdapter) this.f5164g);
        this.f5161d = (Button) findViewById(R.id.btn_scriptlog_removeall);
        this.f5162e = (Button) findViewById(R.id.btn_scriptlog_selectall);
        this.f5161d.setOnClickListener(this);
        this.f5162e.setOnClickListener(this);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.f5165h) {
            return;
        }
        ScriptLog scriptLog = this.f5163f.get(i);
        Intent intent = new Intent(this, (Class<?>) ScriptLogDetailActivity.class);
        intent.putExtra(InterfaceC1224a.f4441F, false);
        intent.putExtra(InterfaceC1224a.f4442G, scriptLog);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd(ScriptLogActivity.class.getCanonicalName());
        MobclickAgent.onPause(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MobclickAgent.onPageStart(ScriptLogActivity.class.getCanonicalName());
        MobclickAgent.onResume(this);
    }
}
