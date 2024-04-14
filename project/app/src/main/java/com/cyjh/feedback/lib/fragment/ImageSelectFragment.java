package com.cyjh.feedback.lib.fragment;

import android.app.ProgressDialog;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.Toast;
import com.cyjh.feedback.lib.base.BaseFragment;
import com.cyjh.feedback.lib.p089a.C1452a;
import com.cyjh.feedback.lib.p091c.C1459b;
import com.cyjh.feedback.libraryfeedbackinfo.C1478R;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ImageSelectFragment extends BaseFragment implements View.OnClickListener {

    /* renamed from: a */
    private static final int f5746a = 272;

    /* renamed from: b */
    private static final String f5747b = ",";

    /* renamed from: c */
    private GridView f5748c;

    /* renamed from: d */
    private List<C1459b> f5749d;

    /* renamed from: e */
    private C1452a f5750e;

    /* renamed from: f */
    private Button f5751f;

    /* renamed from: g */
    private ArrayList<String> f5752g;

    /* renamed from: h */
    private List<String> f5753h;

    /* renamed from: i */
    private File f5754i;

    /* renamed from: j */
    private int f5755j;

    /* renamed from: k */
    private ProgressDialog f5756k;

    /* renamed from: l */
    private Handler f5757l = new Handler() { // from class: com.cyjh.feedback.lib.fragment.ImageSelectFragment.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            C1459b c1459b = (C1459b) message.obj;
            ImageSelectFragment.this.f5756k.dismiss();
            ImageSelectFragment.m6848a(ImageSelectFragment.this, c1459b);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.feedback.lib.fragment.ImageSelectFragment$2 */
    /* loaded from: classes.dex */
    public final class C14752 implements C1452a.a {
        C14752() {
        }

        @Override // com.cyjh.feedback.lib.p089a.C1452a.a
        /* renamed from: a */
        public final void mo6700a(int i) {
            ImageSelectFragment.this.f5751f.setText(ImageSelectFragment.this.getString(C1478R.string.btn_sure, Integer.valueOf(i)));
        }
    }

    /* renamed from: com.cyjh.feedback.lib.fragment.ImageSelectFragment$3 */
    /* loaded from: classes.dex */
    final class C14763 extends Thread {
        C14763() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Cursor query = ImageSelectFragment.this.getActivity().getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, "mime_type= ? or mime_type=?", new String[]{"image/jpeg", "image/png"}, "date_modified");
            HashSet hashSet = new HashSet();
            while (query.moveToNext()) {
                String string = query.getString(query.getColumnIndex("_data"));
                File parentFile = new File(string).getParentFile();
                if (parentFile != null) {
                    String absolutePath = parentFile.getAbsolutePath();
                    if (!hashSet.contains(absolutePath)) {
                        hashSet.add(absolutePath);
                        C1459b c1459b = new C1459b();
                        c1459b.m6765a(absolutePath);
                        c1459b.f5664c = string;
                        if (parentFile.list() != null) {
                            int length = parentFile.list(new FilenameFilter() { // from class: com.cyjh.feedback.lib.fragment.ImageSelectFragment.3.1
                                @Override // java.io.FilenameFilter
                                public final boolean accept(File file, String str) {
                                    return ImageSelectFragment.m6849a(str);
                                }
                            }).length;
                            if (length > ImageSelectFragment.this.f5755j) {
                                ImageSelectFragment.this.f5755j = length;
                                ImageSelectFragment.this.f5754i = parentFile;
                            }
                            c1459b.f5665d = length;
                            ImageSelectFragment.this.f5749d.add(c1459b);
                        }
                    }
                }
            }
            query.close();
            C1459b c1459b2 = new C1459b();
            if (ImageSelectFragment.this.f5749d != null && ImageSelectFragment.this.f5749d.size() > 0) {
                c1459b2.f5663b = ImageSelectFragment.this.getString(C1478R.string.all_photo_mobile);
                c1459b2.f5664c = ((C1459b) ImageSelectFragment.this.f5749d.get(0)).f5664c;
            }
            String str = "";
            int i = 0;
            for (C1459b c1459b3 : ImageSelectFragment.this.f5749d) {
                str = str + c1459b3.f5662a + ImageSelectFragment.f5747b;
                i += c1459b3.f5665d;
            }
            c1459b2.f5665d = i;
            c1459b2.m6765a(str);
            ImageSelectFragment.this.f5749d.add(0, c1459b2);
            ImageSelectFragment.m6853b(ImageSelectFragment.this, c1459b2);
            Message obtainMessage = ImageSelectFragment.this.f5757l.obtainMessage();
            obtainMessage.what = 272;
            obtainMessage.obj = c1459b2;
            ImageSelectFragment.this.f5757l.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.feedback.lib.fragment.ImageSelectFragment$4 */
    /* loaded from: classes.dex */
    public final class C14774 implements FilenameFilter {
        C14774() {
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return ImageSelectFragment.m6849a(str);
        }
    }

    /* renamed from: a */
    private void m6846a(View view) {
        this.f5752g = new ArrayList<>();
        this.f5748c = (GridView) view.findViewById(C1478R.id.grid_view);
        this.f5753h = new ArrayList();
        this.f5749d = new ArrayList();
        this.f5751f = (Button) view.findViewById(C1478R.id.id_btn_sure);
        this.f5751f.setText(getString(C1478R.string.btn_sure, Integer.valueOf(this.f5752g.size())));
        this.f5751f.setOnClickListener(this);
    }

    /* renamed from: a */
    private void m6847a(C1459b c1459b) {
        if (TextUtils.isEmpty(c1459b.f5662a)) {
            Toast.makeText(getActivity(), getString(C1478R.string.no_everything_picture), 0).show();
            return;
        }
        if (this.f5754i == null) {
            Toast.makeText(getActivity(), getString(C1478R.string.no_everything_picture), 1).show();
            return;
        }
        if (this.f5753h != null && this.f5753h.size() <= 0) {
            Toast.makeText(getActivity(), getString(C1478R.string.no_everything_picture), 1).show();
            return;
        }
        this.f5750e = new C1452a(getActivity(), this.f5753h);
        this.f5748c.setAdapter((ListAdapter) this.f5750e);
        this.f5750e.notifyDataSetChanged();
        this.f5750e.f5598b = new C14752();
    }

    /* renamed from: a */
    static /* synthetic */ void m6848a(ImageSelectFragment imageSelectFragment, C1459b c1459b) {
        if (TextUtils.isEmpty(c1459b.f5662a)) {
            Toast.makeText(imageSelectFragment.getActivity(), imageSelectFragment.getString(C1478R.string.no_everything_picture), 0).show();
            return;
        }
        if (imageSelectFragment.f5754i == null) {
            Toast.makeText(imageSelectFragment.getActivity(), imageSelectFragment.getString(C1478R.string.no_everything_picture), 1).show();
            return;
        }
        if (imageSelectFragment.f5753h != null && imageSelectFragment.f5753h.size() <= 0) {
            Toast.makeText(imageSelectFragment.getActivity(), imageSelectFragment.getString(C1478R.string.no_everything_picture), 1).show();
            return;
        }
        imageSelectFragment.f5750e = new C1452a(imageSelectFragment.getActivity(), imageSelectFragment.f5753h);
        imageSelectFragment.f5748c.setAdapter((ListAdapter) imageSelectFragment.f5750e);
        imageSelectFragment.f5750e.notifyDataSetChanged();
        imageSelectFragment.f5750e.f5598b = new C14752();
    }

    /* renamed from: a */
    static /* synthetic */ boolean m6849a(String str) {
        return str.toLowerCase().endsWith(".jpg") || str.toLowerCase().endsWith(".jpeg") || str.toLowerCase().endsWith(".png");
    }

    /* renamed from: b */
    public static ImageSelectFragment m6851b() {
        return new ImageSelectFragment();
    }

    /* renamed from: b */
    private void m6852b(C1459b c1459b) {
        this.f5753h.clear();
        for (String str : c1459b.f5662a.split(f5747b)) {
            String[] list = new File(str).list(new C14774());
            if (list != null) {
                for (String str2 : list) {
                    this.f5753h.add(str + File.separator + str2);
                }
            }
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m6853b(ImageSelectFragment imageSelectFragment, C1459b c1459b) {
        imageSelectFragment.f5753h.clear();
        for (String str : c1459b.f5662a.split(f5747b)) {
            String[] list = new File(str).list(new C14774());
            if (list != null) {
                for (String str2 : list) {
                    imageSelectFragment.f5753h.add(str + File.separator + str2);
                }
            }
        }
    }

    /* renamed from: b */
    private static boolean m6854b(String str) {
        return str.toLowerCase().endsWith(".jpg") || str.toLowerCase().endsWith(".jpeg") || str.toLowerCase().endsWith(".png");
    }

    /* renamed from: c */
    private void m6856c() {
        this.f5750e.f5598b = new C14752();
    }

    /* renamed from: d */
    private void m6858d() {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            Toast.makeText(getActivity(), getString(C1478R.string.no_sdk), 1).show();
        } else {
            this.f5756k = ProgressDialog.show(getActivity(), null, getString(C1478R.string.loading_somethings));
            new C14763().start();
        }
    }

    @Override // com.cyjh.feedback.lib.base.BaseFragment
    /* renamed from: a */
    public final int mo6718a() {
        return C1478R.layout.fragment_select_image;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != C1478R.id.id_btn_sure || this.f5750e == null) {
            return;
        }
        if (this.f5750e.f5597a.size() <= 0) {
            Toast.makeText(getActivity(), getString(C1478R.string.please_choose_photo), 1).show();
            return;
        }
        Iterator<String> it = this.f5750e.f5597a.iterator();
        while (it.hasNext()) {
            this.f5752g.add(it.next());
        }
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("image", this.f5752g);
        intent.putExtra("bundle", bundle);
        getActivity().setResult(-1, intent);
        getActivity().finish();
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd(ImageSelectFragment.class.getCanonicalName());
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        MobclickAgent.onPageStart(ImageSelectFragment.class.getCanonicalName());
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f5752g = new ArrayList<>();
        this.f5748c = (GridView) view.findViewById(C1478R.id.grid_view);
        this.f5753h = new ArrayList();
        this.f5749d = new ArrayList();
        this.f5751f = (Button) view.findViewById(C1478R.id.id_btn_sure);
        this.f5751f.setText(getString(C1478R.string.btn_sure, Integer.valueOf(this.f5752g.size())));
        this.f5751f.setOnClickListener(this);
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            Toast.makeText(getActivity(), getString(C1478R.string.no_sdk), 1).show();
        } else {
            this.f5756k = ProgressDialog.show(getActivity(), null, getString(C1478R.string.loading_somethings));
            new C14763().start();
        }
    }
}
