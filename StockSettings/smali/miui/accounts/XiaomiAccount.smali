.class public Lmiui/accounts/XiaomiAccount;
.super Ljava/lang/Object;
.source "XiaomiAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/accounts/XiaomiAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvatarFileName:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lmiui/accounts/XiaomiAccount$1;

    invoke-direct {v0}, Lmiui/accounts/XiaomiAccount$1;-><init>()V

    sput-object v0, Lmiui/accounts/XiaomiAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/accounts/XiaomiAccount;->mName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/accounts/XiaomiAccount;->mNickName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/accounts/XiaomiAccount;->mEmail:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/accounts/XiaomiAccount;->mPhone:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/accounts/XiaomiAccount;->mAvatarFileName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "phone"    # Ljava/lang/String;
    .param p5, "avatarfilename"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lmiui/accounts/XiaomiAccount;->mName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lmiui/accounts/XiaomiAccount;->mNickName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lmiui/accounts/XiaomiAccount;->mEmail:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lmiui/accounts/XiaomiAccount;->mPhone:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lmiui/accounts/XiaomiAccount;->mAvatarFileName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/accounts/XiaomiAccount;->mAvatarFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/accounts/XiaomiAccount;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/accounts/XiaomiAccount;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/accounts/XiaomiAccount;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmiui/accounts/XiaomiAccount;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lmiui/accounts/XiaomiAccount;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lmiui/accounts/XiaomiAccount;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lmiui/accounts/XiaomiAccount;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lmiui/accounts/XiaomiAccount;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lmiui/accounts/XiaomiAccount;->mAvatarFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void
.end method
