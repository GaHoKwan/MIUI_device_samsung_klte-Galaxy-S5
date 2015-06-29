.class Lmiui/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DatePicker;
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
            "Lmiui/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mIsLunar:Z

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 773
    new-instance v0, Lmiui/widget/DatePicker$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 755
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/widget/DatePicker$SavedState;->mYear:I

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/widget/DatePicker$SavedState;->mMonth:I

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/widget/DatePicker$SavedState;->mDay:I

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/widget/DatePicker$SavedState;->mIsLunar:Z

    .line 760
    return-void

    .line 759
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/widget/DatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmiui/widget/DatePicker$1;

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIZ)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "isLunar"    # Z

    .prologue
    .line 744
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 745
    iput p2, p0, Lmiui/widget/DatePicker$SavedState;->mYear:I

    .line 746
    iput p3, p0, Lmiui/widget/DatePicker$SavedState;->mMonth:I

    .line 747
    iput p4, p0, Lmiui/widget/DatePicker$SavedState;->mDay:I

    .line 748
    iput-boolean p5, p0, Lmiui/widget/DatePicker$SavedState;->mIsLunar:Z

    .line 749
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIZLmiui/widget/DatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lmiui/widget/DatePicker$1;

    .prologue
    .line 730
    invoke-direct/range {p0 .. p5}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZ)V

    return-void
.end method

.method static synthetic access$1100(Lmiui/widget/DatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DatePicker$SavedState;

    .prologue
    .line 730
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1200(Lmiui/widget/DatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DatePicker$SavedState;

    .prologue
    .line 730
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1300(Lmiui/widget/DatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DatePicker$SavedState;

    .prologue
    .line 730
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mDay:I

    return v0
.end method

.method static synthetic access$1400(Lmiui/widget/DatePicker$SavedState;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DatePicker$SavedState;

    .prologue
    .line 730
    iget-boolean v0, p0, Lmiui/widget/DatePicker$SavedState;->mIsLunar:Z

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 764
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 765
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget-boolean v0, p0, Lmiui/widget/DatePicker$SavedState;->mIsLunar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    return-void

    .line 768
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
