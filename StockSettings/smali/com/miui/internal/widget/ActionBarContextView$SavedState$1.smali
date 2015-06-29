.class final Lcom/miui/internal/widget/ActionBarContextView$SavedState$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarContextView$SavedState;
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
        "Lcom/miui/internal/widget/ActionBarContextView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/widget/ActionBarContextView$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 585
    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    invoke-direct {v0, p1}, Lcom/miui/internal/widget/ActionBarContextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/internal/widget/ActionBarContextView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 589
    new-array v0, p1, [Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView$SavedState$1;->newArray(I)[Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    move-result-object v0

    return-object v0
.end method
