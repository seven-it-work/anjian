package javax.mail.event;

/* loaded from: classes.dex */
public abstract class TransportAdapter implements TransportListener {
    @Override // javax.mail.event.TransportListener
    public void messageDelivered(TransportEvent transportEvent) {
    }

    @Override // javax.mail.event.TransportListener
    public void messageNotDelivered(TransportEvent transportEvent) {
    }

    @Override // javax.mail.event.TransportListener
    public void messagePartiallyDelivered(TransportEvent transportEvent) {
    }
}
