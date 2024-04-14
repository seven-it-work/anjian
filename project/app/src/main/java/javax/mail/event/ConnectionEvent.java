package javax.mail.event;

/* loaded from: classes.dex */
public class ConnectionEvent extends MailEvent {
    public static final int CLOSED = 3;
    public static final int DISCONNECTED = 2;
    public static final int OPENED = 1;
    private static final long serialVersionUID = -1855480171284792957L;
    protected int type;

    public ConnectionEvent(Object obj, int i) {
        super(obj);
        this.type = i;
    }

    @Override // javax.mail.event.MailEvent
    public void dispatch(Object obj) {
        if (this.type == 1) {
            ((ConnectionListener) obj).opened(this);
        } else if (this.type == 2) {
            ((ConnectionListener) obj).disconnected(this);
        } else if (this.type == 3) {
            ((ConnectionListener) obj).closed(this);
        }
    }

    public int getType() {
        return this.type;
    }
}
