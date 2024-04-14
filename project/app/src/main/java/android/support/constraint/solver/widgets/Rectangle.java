package android.support.constraint.solver.widgets;

/* loaded from: classes.dex */
public class Rectangle {
    public int height;
    public int width;

    /* renamed from: x */
    public int f21x;

    /* renamed from: y */
    public int f22y;

    public boolean contains(int i, int i2) {
        return i >= this.f21x && i < this.f21x + this.width && i2 >= this.f22y && i2 < this.f22y + this.height;
    }

    public int getCenterX() {
        return (this.f21x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f22y + this.height) / 2;
    }

    void grow(int i, int i2) {
        this.f21x -= i;
        this.f22y -= i2;
        this.width += i * 2;
        this.height += i2 * 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean intersects(Rectangle rectangle) {
        return this.f21x >= rectangle.f21x && this.f21x < rectangle.f21x + rectangle.width && this.f22y >= rectangle.f22y && this.f22y < rectangle.f22y + rectangle.height;
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        this.f21x = i;
        this.f22y = i2;
        this.width = i3;
        this.height = i4;
    }
}
