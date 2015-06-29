.class public Lcom/miui/internal/analytics/EventUtils;
.super Ljava/lang/Object;
.source "EventUtils.java"


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "event_id"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final COLUMN_PARAM:Ljava/lang/String; = "param"

.field public static final COLUMN_TIME:Ljava/lang/String; = "time"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final DEFAULT_MAXSAVE:I = 0x7

.field public static final TYPE_EVENT:I = 0x2

.field public static final TYPE_LOG:I = 0x1

.field public static final TYPE_TRACKPAGEVIEW:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static enableWrite(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 31
    sget-boolean v4, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v4, :cond_0

    move v1, v2

    .line 32
    .local v1, "default_value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "upload_log_pref"

    invoke-static {v4, v5, v1}, Lmiui/provider/ExtraSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, "allow":I
    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "allow":I
    .end local v1    # "default_value":I
    :cond_0
    move v1, v3

    .line 31
    goto :goto_0

    .restart local v0    # "allow":I
    .restart local v1    # "default_value":I
    :cond_1
    move v2, v3

    .line 34
    goto :goto_1
.end method

.method public static getDay(J)I
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 38
    const-wide/32 v0, 0x5265c00

    div-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method
