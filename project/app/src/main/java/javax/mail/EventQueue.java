package javax.mail;

import java.util.Vector;
import javax.mail.event.MailEvent;

/* loaded from: classes.dex */
class EventQueue implements Runnable {
    private QueueElement head = null;
    private QueueElement tail = null;
    private Thread qThread = new Thread(this, "JavaMail-EventQueue");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class QueueElement {
        MailEvent event;
        QueueElement next = null;
        QueueElement prev = null;
        Vector vector;

        QueueElement(MailEvent mailEvent, Vector vector) {
            this.event = null;
            this.vector = null;
            this.event = mailEvent;
            this.vector = vector;
        }
    }

    public EventQueue() {
        this.qThread.setDaemon(true);
        this.qThread.start();
    }

    private synchronized QueueElement dequeue() throws InterruptedException {
        QueueElement queueElement;
        while (this.tail == null) {
            wait();
        }
        queueElement = this.tail;
        this.tail = queueElement.prev;
        if (this.tail == null) {
            this.head = null;
        } else {
            this.tail.next = null;
        }
        queueElement.next = null;
        queueElement.prev = null;
        return queueElement;
    }

    public synchronized void enqueue(MailEvent mailEvent, Vector vector) {
        QueueElement queueElement = new QueueElement(mailEvent, vector);
        if (this.head == null) {
            this.head = queueElement;
            this.tail = queueElement;
        } else {
            queueElement.next = this.head;
            this.head.prev = queueElement;
            this.head = queueElement;
        }
        notifyAll();
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                QueueElement dequeue = dequeue();
                if (dequeue == null) {
                    return;
                }
                MailEvent mailEvent = dequeue.event;
                Vector vector = dequeue.vector;
                for (int i = 0; i < vector.size(); i++) {
                    try {
                        mailEvent.dispatch(vector.elementAt(i));
                    } catch (Throwable th) {
                        if (th instanceof InterruptedException) {
                            return;
                        }
                    }
                }
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    void stop() {
        if (this.qThread != null) {
            this.qThread.interrupt();
            this.qThread = null;
        }
    }
}
