.class final Lmiui/accounts/XiaomiAccount$1;
.super Ljava/lang/Object;
.source "XiaomiAccount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/accounts/XiaomiAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmiui/accounts/XiaomiAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lmiui/accounts/XiaomiAccount$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/accounts/XiaomiAccount;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/accounts/XiaomiAccount;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 79
    new-instance v0, Lmiui/accounts/XiaomiAccount;

    invoke-direct {v0, p1}, Lmiui/accounts/XiaomiAccount;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lmiui/accounts/XiaomiAccount$1;->newArray(I)[Lmiui/accounts/XiaomiAccount;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/accounts/XiaomiAccount;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 83
    new-array v0, p1, [Lmiui/accounts/XiaomiAccount;

    return-object v0
.end method
