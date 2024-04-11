Landroid/util/Log;->e\(Ljava/lang/String;Ljava/lang/String;\)I


.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 8
    const-string v0, "\u6d4b\u8bd5"

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 11
    const-string v0, "\u6d4b\u8bd5"

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 12
    return-void
.end method
