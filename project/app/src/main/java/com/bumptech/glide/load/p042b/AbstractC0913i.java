package com.bumptech.glide.load.p042b;

import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.EnumC0930c;

/* renamed from: com.bumptech.glide.load.b.i */
/* loaded from: classes.dex */
public abstract class AbstractC0913i {

    /* renamed from: a */
    public static final AbstractC0913i f2750a = new AbstractC0913i() { // from class: com.bumptech.glide.load.b.i.1
        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2681a() {
            return true;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2682a(EnumC0849a enumC0849a) {
            return enumC0849a == EnumC0849a.REMOTE;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2683a(boolean z, EnumC0849a enumC0849a, EnumC0930c enumC0930c) {
            return (enumC0849a == EnumC0849a.RESOURCE_DISK_CACHE || enumC0849a == EnumC0849a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: b */
        public final boolean mo2684b() {
            return true;
        }
    };

    /* renamed from: b */
    public static final AbstractC0913i f2751b = new AbstractC0913i() { // from class: com.bumptech.glide.load.b.i.2
        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2681a() {
            return false;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2682a(EnumC0849a enumC0849a) {
            return false;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2683a(boolean z, EnumC0849a enumC0849a, EnumC0930c enumC0930c) {
            return false;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: b */
        public final boolean mo2684b() {
            return false;
        }
    };

    /* renamed from: c */
    public static final AbstractC0913i f2752c = new AbstractC0913i() { // from class: com.bumptech.glide.load.b.i.3
        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2681a() {
            return false;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2682a(EnumC0849a enumC0849a) {
            return (enumC0849a == EnumC0849a.DATA_DISK_CACHE || enumC0849a == EnumC0849a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2683a(boolean z, EnumC0849a enumC0849a, EnumC0930c enumC0930c) {
            return false;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: b */
        public final boolean mo2684b() {
            return true;
        }
    };

    /* renamed from: d */
    public static final AbstractC0913i f2753d = new AbstractC0913i() { // from class: com.bumptech.glide.load.b.i.4
        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2681a() {
            return true;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2682a(EnumC0849a enumC0849a) {
            return false;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2683a(boolean z, EnumC0849a enumC0849a, EnumC0930c enumC0930c) {
            return (enumC0849a == EnumC0849a.RESOURCE_DISK_CACHE || enumC0849a == EnumC0849a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: b */
        public final boolean mo2684b() {
            return false;
        }
    };

    /* renamed from: e */
    public static final AbstractC0913i f2754e = new AbstractC0913i() { // from class: com.bumptech.glide.load.b.i.5
        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2681a() {
            return true;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2682a(EnumC0849a enumC0849a) {
            return enumC0849a == EnumC0849a.REMOTE;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: a */
        public final boolean mo2683a(boolean z, EnumC0849a enumC0849a, EnumC0930c enumC0930c) {
            return ((z && enumC0849a == EnumC0849a.DATA_DISK_CACHE) || enumC0849a == EnumC0849a.LOCAL) && enumC0930c == EnumC0930c.TRANSFORMED;
        }

        @Override // com.bumptech.glide.load.p042b.AbstractC0913i
        /* renamed from: b */
        public final boolean mo2684b() {
            return true;
        }
    };

    /* renamed from: a */
    public abstract boolean mo2681a();

    /* renamed from: a */
    public abstract boolean mo2682a(EnumC0849a enumC0849a);

    /* renamed from: a */
    public abstract boolean mo2683a(boolean z, EnumC0849a enumC0849a, EnumC0930c enumC0930c);

    /* renamed from: b */
    public abstract boolean mo2684b();
}
