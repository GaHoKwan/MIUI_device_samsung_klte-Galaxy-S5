.class Lmiui/widget/DateTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/widget/DateTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nTimeInMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lmiui/widget/DateTimePicker$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/DateTimePicker$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 415
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    .line 418
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;J)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "timeInMillis"    # J

    .prologue
    .line 406
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 408
    iput-wide p2, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    .line 409
    return-void
.end method


# virtual methods
.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 421
    iget-wide v0, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 426
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 428
    iget-wide v0, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 429
    return-void
.end method