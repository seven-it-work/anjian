package javax.mail.event;

import javax.mail.Folder;

/* loaded from: classes.dex */
public class FolderEvent extends MailEvent {
    public static final int CREATED = 1;
    public static final int DELETED = 2;
    public static final int RENAMED = 3;
    private static final long serialVersionUID = 5278131310563694307L;
    protected transient Folder folder;
    protected transient Folder newFolder;
    protected int type;

    public FolderEvent(Object obj, Folder folder, int i) {
        this(obj, folder, folder, i);
    }

    public FolderEvent(Object obj, Folder folder, Folder folder2, int i) {
        super(obj);
        this.folder = folder;
        this.newFolder = folder2;
        this.type = i;
    }

    @Override // javax.mail.event.MailEvent
    public void dispatch(Object obj) {
        if (this.type == 1) {
            ((FolderListener) obj).folderCreated(this);
        } else if (this.type == 2) {
            ((FolderListener) obj).folderDeleted(this);
        } else if (this.type == 3) {
            ((FolderListener) obj).folderRenamed(this);
        }
    }

    public Folder getFolder() {
        return this.folder;
    }

    public Folder getNewFolder() {
        return this.newFolder;
    }

    public int getType() {
        return this.type;
    }
}
