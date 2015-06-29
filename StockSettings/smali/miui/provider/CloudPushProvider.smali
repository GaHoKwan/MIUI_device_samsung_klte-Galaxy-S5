.class public abstract Lmiui/provider/CloudPushProvider;
.super Landroid/content/ContentProvider;
.source "CloudPushProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/CloudPushProvider$Watermark;
    }
.end annotation


# static fields
.field public static final NAME_COLUMNS:Ljava/lang/String; = "name"

.field public static final NAME_COLUMNS_INDEX:I = 0x0

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TYPE_COLUMNS:Ljava/lang/String; = "type"

.field public static final TYPE_COLUMNS_INDEX:I = 0x2

.field public static final VALUE_COLUMNS:Ljava/lang/String; = "value"

.field public static final VALUE_COLUMNS_INDEX:I = 0x1

.field private static final WATERMARK_LIST:I = 0x1

.field private static final WATERMARK_LIST_PATH:Ljava/lang/String; = "watermark_list"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/CloudPushProvider;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 108
    return-void
.end method

.method private getWatermarkListCursor(Landroid/accounts/Account;)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "cursor":Landroid/database/MatrixCursor;
    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Landroid/database/MatrixCursor;

    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    sget-object v4, Lmiui/provider/CloudPushProvider;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 87
    .restart local v0    # "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lmiui/provider/CloudPushProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lmiui/provider/CloudPushProvider;->getWatermarkList(Landroid/content/Context;Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v3

    .line 88
    .local v3, "watermarks":Ljava/util/List;, "Ljava/util/List<Lmiui/provider/CloudPushProvider$Watermark;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/provider/CloudPushProvider$Watermark;

    .line 89
    .local v2, "watermark":Lmiui/provider/CloudPushProvider$Watermark;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Lmiui/provider/CloudPushProvider$Watermark;->mName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, v2, Lmiui/provider/CloudPushProvider$Watermark;->mValue:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v2, Lmiui/provider/CloudPushProvider$Watermark;->mType:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "watermark":Lmiui/provider/CloudPushProvider$Watermark;
    .end local v3    # "watermarks":Ljava/util/List;, "Ljava/util/List<Lmiui/provider/CloudPushProvider$Watermark;>;"
    :cond_0
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getWatermarkList(Landroid/content/Context;Landroid/accounts/Account;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/provider/CloudPushProvider$Watermark;",
            ">;"
        }
    .end annotation
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    .line 50
    .local v1, "uriMatcher":Landroid/content/UriMatcher;
    invoke-virtual {p0}, Lmiui/provider/CloudPushProvider;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "watermark_list"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    invoke-virtual {p0}, Lmiui/provider/CloudPushProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 53
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :pswitch_0
    invoke-direct {p0, v0}, Lmiui/provider/CloudPushProvider;->getWatermarkListCursor(Landroid/accounts/Account;)Landroid/database/MatrixCursor;

    move-result-object v2

    return-object v2

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
