.class public Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;
.super Landroid/util/SparseArray;
.source "Android_View_View_class.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_View_View_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ValuedSparseArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mHorizontalState:I

.field mTagChildrenSequenceState:Z

.field mVerticalState:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1}, Landroid/util/SparseArray;-><init>(I)V

    .line 168
    iput v0, p0, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;->mHorizontalState:I

    .line 169
    iput v0, p0, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;->mVerticalState:I

    .line 171
    iput-boolean v0, p0, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;->mTagChildrenSequenceState:Z

    .line 166
    return-void
.end method
