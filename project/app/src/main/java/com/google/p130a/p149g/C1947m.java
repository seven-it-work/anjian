package com.google.p130a.p149g;

import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.google.p130a.p135b.p136a.C1831k;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.a.g.m */
/* loaded from: classes.dex */
final class C1947m {

    /* renamed from: a */
    final List<int[]> f7599a = new ArrayList();

    /* renamed from: b */
    final List<String> f7600b = new ArrayList();

    /* renamed from: a */
    private String m8860a(String str) {
        int[] iArr;
        int i;
        m8862a();
        int parseInt = Integer.parseInt(str.substring(0, 3));
        int size = this.f7599a.size();
        for (int i2 = 0; i2 < size && parseInt >= (i = (iArr = this.f7599a.get(i2))[0]); i2++) {
            if (iArr.length != 1) {
                i = iArr[1];
            }
            if (parseInt <= i) {
                return this.f7600b.get(i2);
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m8861a(int[] iArr, String str) {
        this.f7599a.add(iArr);
        this.f7600b.add(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized void m8862a() {
        if (this.f7599a.isEmpty()) {
            m8861a(new int[]{0, 19}, "US/CA");
            m8861a(new int[]{30, 39}, "US");
            m8861a(new int[]{60, 139}, "US/CA");
            m8861a(new int[]{300, 379}, "FR");
            m8861a(new int[]{380}, "BG");
            m8861a(new int[]{383}, "SI");
            m8861a(new int[]{385}, "HR");
            m8861a(new int[]{387}, "BA");
            m8861a(new int[]{400, 440}, "DE");
            m8861a(new int[]{450, 459}, "JP");
            m8861a(new int[]{460, 469}, "RU");
            m8861a(new int[]{471}, "TW");
            m8861a(new int[]{474}, "EE");
            m8861a(new int[]{475}, "LV");
            m8861a(new int[]{476}, "AZ");
            m8861a(new int[]{477}, "LT");
            m8861a(new int[]{478}, "UZ");
            m8861a(new int[]{479}, "LK");
            m8861a(new int[]{480}, "PH");
            m8861a(new int[]{481}, "BY");
            m8861a(new int[]{482}, "UA");
            m8861a(new int[]{484}, "MD");
            m8861a(new int[]{485}, "AM");
            m8861a(new int[]{486}, "GE");
            m8861a(new int[]{487}, "KZ");
            m8861a(new int[]{489}, "HK");
            m8861a(new int[]{490, 499}, "JP");
            m8861a(new int[]{500, 509}, "GB");
            m8861a(new int[]{520}, "GR");
            m8861a(new int[]{528}, C1831k.f7203b);
            m8861a(new int[]{529}, "CY");
            m8861a(new int[]{531}, "MK");
            m8861a(new int[]{535}, "MT");
            m8861a(new int[]{539}, "IE");
            m8861a(new int[]{540, 549}, "BE/LU");
            m8861a(new int[]{560}, "PT");
            m8861a(new int[]{569}, "IS");
            m8861a(new int[]{570, 579}, "DK");
            m8861a(new int[]{590}, "PL");
            m8861a(new int[]{594}, "RO");
            m8861a(new int[]{599}, "HU");
            m8861a(new int[]{600, UiMessage.CommandToUi.Command_Type.LOAD_PROFILE_VALUE}, "ZA");
            m8861a(new int[]{UiMessage.CommandToUi.Command_Type.SET_FW_SMOOTH_VALUE}, "GH");
            m8861a(new int[]{UiMessage.CommandToUi.Command_Type.FW_SET_LEFT_VALUE}, "BH");
            m8861a(new int[]{UiMessage.CommandToUi.Command_Type.FW_SET_TOP_VALUE}, "MU");
            m8861a(new int[]{UiMessage.CommandToUi.Command_Type.FW_SET_HEIGHT_VALUE}, "MA");
            m8861a(new int[]{613}, "DZ");
            m8861a(new int[]{616}, "KE");
            m8861a(new int[]{618}, "CI");
            m8861a(new int[]{619}, "TN");
            m8861a(new int[]{621}, "SY");
            m8861a(new int[]{622}, "EG");
            m8861a(new int[]{624}, "LY");
            m8861a(new int[]{625}, "JO");
            m8861a(new int[]{626}, "IR");
            m8861a(new int[]{627}, "KW");
            m8861a(new int[]{628}, "SA");
            m8861a(new int[]{629}, "AE");
            m8861a(new int[]{640, 649}, "FI");
            m8861a(new int[]{690, 695}, "CN");
            m8861a(new int[]{700, 709}, "NO");
            m8861a(new int[]{729}, "IL");
            m8861a(new int[]{730, 739}, "SE");
            m8861a(new int[]{740}, "GT");
            m8861a(new int[]{741}, "SV");
            m8861a(new int[]{742}, "HN");
            m8861a(new int[]{743}, "NI");
            m8861a(new int[]{744}, "CR");
            m8861a(new int[]{745}, "PA");
            m8861a(new int[]{746}, "DO");
            m8861a(new int[]{750}, "MX");
            m8861a(new int[]{754, 755}, "CA");
            m8861a(new int[]{759}, "VE");
            m8861a(new int[]{760, 769}, "CH");
            m8861a(new int[]{770}, "CO");
            m8861a(new int[]{773}, "UY");
            m8861a(new int[]{775}, "PE");
            m8861a(new int[]{777}, "BO");
            m8861a(new int[]{779}, "AR");
            m8861a(new int[]{780}, "CL");
            m8861a(new int[]{784}, "PY");
            m8861a(new int[]{785}, "PE");
            m8861a(new int[]{786}, "EC");
            m8861a(new int[]{789, 790}, "BR");
            m8861a(new int[]{800, 839}, "IT");
            m8861a(new int[]{840, 849}, "ES");
            m8861a(new int[]{850}, "CU");
            m8861a(new int[]{858}, "SK");
            m8861a(new int[]{859}, "CZ");
            m8861a(new int[]{860}, "YU");
            m8861a(new int[]{865}, "MN");
            m8861a(new int[]{867}, "KP");
            m8861a(new int[]{868, 869}, "TR");
            m8861a(new int[]{870, 879}, "NL");
            m8861a(new int[]{880}, "KR");
            m8861a(new int[]{885}, "TH");
            m8861a(new int[]{888}, "SG");
            m8861a(new int[]{890}, "IN");
            m8861a(new int[]{893}, "VN");
            m8861a(new int[]{896}, "PK");
            m8861a(new int[]{899}, "ID");
            m8861a(new int[]{900, 919}, "AT");
            m8861a(new int[]{930, 939}, "AU");
            m8861a(new int[]{940, 949}, "AZ");
            m8861a(new int[]{955}, "MY");
            m8861a(new int[]{958}, "MO");
        }
    }
}
