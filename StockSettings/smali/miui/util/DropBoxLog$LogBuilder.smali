.class public Lmiui/util/DropBoxLog$LogBuilder;
.super Ljava/lang/Object;
.source "DropBoxLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DropBoxLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogBuilder"
.end annotation


# static fields
.field private static final CLOUD_DROP_BOX_LOG_TAG:Ljava/lang/String; = "micloud"

.field private static sStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "D"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lmiui/util/DropBoxLog;->appendLog(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    invoke-static {p1, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "D"

    invoke-static {v0, v1, p0, p1, p2}, Lmiui/util/DropBoxLog;->appendLog(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "E"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lmiui/util/DropBoxLog;->appendLog(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    invoke-static {p1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "E"

    invoke-static {v0, v1, p0, p1, p2}, Lmiui/util/DropBoxLog;->appendLog(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "I"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lmiui/util/DropBoxLog;->appendLog(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    invoke-static {p1, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "I"

    invoke-static {v0, v1, p0, p1, p2}, Lmiui/util/DropBoxLog;->appendLog(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "V"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lmiui/util/DropBoxLog;->appendLog(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-static {p1, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "V"

    invoke-static {v0, v1, p0, p1, p2}, Lmiui/util/DropBoxLog;->appendLog(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "W"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lmiui/util/DropBoxLog;->appendLog(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    invoke-static {p1, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "W"

    invoke-static {v0, v1, p0, p1, p2}, Lmiui/util/DropBoxLog;->appendLog(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public static writeLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "appTag"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micloud_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/DropBoxLog;->writeLog(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lmiui/util/DropBoxLog$LogBuilder;->sStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 92
    return-void
.end method
