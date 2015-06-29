.class public abstract Lmiui/accounts/IXiaomiAccountService$Stub;
.super Landroid/os/Binder;
.source "IXiaomiAccountService.java"

# interfaces
.implements Lmiui/accounts/IXiaomiAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/accounts/IXiaomiAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/accounts/IXiaomiAccountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.accounts.IXiaomiAccountService"

.field static final TRANSACTION_getAccessToken:I = 0x8

.field static final TRANSACTION_getAvatarFd:I = 0x5

.field static final TRANSACTION_getAvatarFdByFileName:I = 0x7

.field static final TRANSACTION_getEmail:I = 0x3

.field static final TRANSACTION_getNickName:I = 0x2

.field static final TRANSACTION_getPhone:I = 0x4

.field static final TRANSACTION_getSnsAccessToken:I = 0x9

.field static final TRANSACTION_getUserName:I = 0x1

.field static final TRANSACTION_getXiaomiAccount:I = 0x6

.field static final TRANSACTION_invalidateSnsAccessToken:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p0, p0, v0}, Lmiui/accounts/IXiaomiAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/accounts/IXiaomiAccountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "miui.accounts.IXiaomiAccountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/accounts/IXiaomiAccountService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/accounts/IXiaomiAccountService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lmiui/accounts/IXiaomiAccountService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/accounts/IXiaomiAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v6, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v6, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 58
    .local v0, "_arg0":Landroid/accounts/Account;
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/accounts/IXiaomiAccountService$Stub;->getUserName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/accounts/Account;
    goto :goto_1

    .line 65
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :sswitch_2
    const-string v6, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 73
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_2
    invoke-virtual {p0, v0}, Lmiui/accounts/IXiaomiAccountService$Stub;->getNickName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/accounts/Account;
    goto :goto_2

    .line 80
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :sswitch_3
    const-string v6, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 88
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_3
    invoke-virtual {p0, v0}, Lmiui/accounts/IXiaomiAccountService$Stub;->getEmail(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/accounts/Account;
    goto :goto_3

    .line 95
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :sswitch_4
    const-string v6, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 98
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 103
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_4
    invoke-virtual {p0, v0}, Lmiui/accounts/IXiaomiAccountService$Stub;->getPhone(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/accounts/Account;
    goto :goto_4

    .line 110
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :sswitch_5
    const-string v7, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 113
    sget-object v7, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 118
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_5
    invoke-virtual {p0, v0}, Lmiui/accounts/IXiaomiAccountService$Stub;->getAvatarFd(Landroid/accounts/Account;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 119
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v4, :cond_5

    .line 121
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v4, p3, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 116
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/accounts/Account;
    goto :goto_5

    .line 125
    .restart local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_6
    const-string v7, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v0, v5

    .line 135
    .local v0, "_arg0":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    .line 136
    sget-object v7, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 141
    .local v1, "_arg1":Landroid/accounts/Account;
    :goto_7
    invoke-virtual {p0, v0, v1}, Lmiui/accounts/IXiaomiAccountService$Stub;->getXiaomiAccount(ZLandroid/accounts/Account;)Lmiui/accounts/XiaomiAccount;

    move-result-object v4

    .line 142
    .local v4, "_result":Lmiui/accounts/XiaomiAccount;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v4, :cond_8

    .line 144
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v4, p3, v5}, Lmiui/accounts/XiaomiAccount;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v4    # "_result":Lmiui/accounts/XiaomiAccount;
    :cond_6
    move v0, v6

    .line 133
    goto :goto_6

    .line 139
    .restart local v0    # "_arg0":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/accounts/Account;
    goto :goto_7

    .line 148
    .restart local v4    # "_result":Lmiui/accounts/XiaomiAccount;
    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v4    # "_result":Lmiui/accounts/XiaomiAccount;
    :sswitch_7
    const-string v7, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/accounts/IXiaomiAccountService$Stub;->getAvatarFdByFileName(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 158
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v4, :cond_9

    .line 160
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {v4, p3, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 164
    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_8
    const-string v7, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    .line 173
    sget-object v7, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 179
    .local v0, "_arg0":Landroid/accounts/Account;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    move v3, v5

    .line 184
    .local v3, "_arg3":Z
    :goto_9
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/accounts/IXiaomiAccountService$Stub;->getAccessToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    .end local v4    # "_result":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/accounts/Account;
    goto :goto_8

    .restart local v1    # "_arg1":Ljava/lang/String;
    .restart local v2    # "_arg2":Ljava/lang/String;
    :cond_b
    move v3, v6

    .line 183
    goto :goto_9

    .line 191
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_9
    const-string v6, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/accounts/IXiaomiAccountService$Stub;->getSnsAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v7, "miui.accounts.IXiaomiAccountService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/accounts/IXiaomiAccountService$Stub;->invalidateSnsAccessToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 207
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v4, :cond_c

    move v6, v5

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
