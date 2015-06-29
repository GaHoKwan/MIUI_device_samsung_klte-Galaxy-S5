.class Lmiui/widget/NavigationLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "NavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
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
            "Lmiui/widget/NavigationLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field offset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 940
    new-instance v0, Lmiui/widget/NavigationLayout$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/NavigationLayout$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/NavigationLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 956
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    .line 958
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 961
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 962
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lmiui/widget/NavigationLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # Lmiui/widget/NavigationLayout$1;

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 966
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 967
    iget v0, p0, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 968
    return-void
.end method
