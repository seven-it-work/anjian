package com.lidroid.xutils.task;

/* loaded from: classes.dex */
class Node<T> {
    Node<T> next;
    private PriorityObject<?> value;
    private boolean valueAsT = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Node(T t) {
        setValue(t);
    }

    public Priority getPriority() {
        return this.value.priority;
    }

    public T getValue() {
        if (this.value == null) {
            return null;
        }
        return this.valueAsT ? (T) this.value : (T) this.value.obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setValue(T t) {
        if (t == 0) {
            this.value = null;
        } else if (!(t instanceof PriorityObject)) {
            this.value = new PriorityObject<>(Priority.DEFAULT, t);
        } else {
            this.value = (PriorityObject) t;
            this.valueAsT = true;
        }
    }
}
