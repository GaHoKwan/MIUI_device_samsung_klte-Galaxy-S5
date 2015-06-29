.class public abstract Lcom/miui/internal/variable/Android_View_View_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_View_View_class.java"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_View_class$1;,
        Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;,
        Lcom/miui/internal/variable/Android_View_View_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy",
        "<",
        "Landroid/view/View;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field private static sStateAttributeIndexes:Landroid/util/SparseIntArray;

.field private static sViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 19
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sViewStates:Landroid/util/SparseArray;

    .line 24
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x101009c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x101009e

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x101009f

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x10100a0

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x10100a1

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x10100a2

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x10100a3

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x10100a4

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x10100a5

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x10100a6

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x10100a7

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x10100a9

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x10102fe

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_first_h:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_middle_h:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_last_h:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_single_h:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_first_v:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_middle_v:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_last_v:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_single_v:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 49
    return-void
.end method

.method private static getIndexOfStates(I)I
    .locals 4
    .param p0, "state"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "index":I
    if-eqz p0, :cond_1

    .line 82
    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 83
    .local v1, "value":I
    if-nez v1, :cond_2

    .line 84
    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    .line 85
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "State attribute cannot exceed 32!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    const/4 v2, 0x1

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v0, v2, v3

    .line 88
    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    .end local v1    # "value":I
    :cond_1
    :goto_0
    return v0

    .line 90
    .restart local v1    # "value":I
    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static getIndexOfStates([I)I
    .locals 6
    .param p0, "states"    # [I

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, "index":I
    if-eqz p0, :cond_0

    .line 99
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v0, v1

    .line 100
    .local v4, "state":I
    invoke-static {v4}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates(I)I

    move-result v5

    or-int/2addr v2, v5

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "state":I
    :cond_0
    return v2
.end method


# virtual methods
.method protected abstract getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;
.end method

.method public getHorizontalState(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;

    move-result-object v0

    iget v0, v0, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;->mHorizontalState:I

    return v0
.end method

.method public getVerticalState(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;

    move-result-object v0

    iget v0, v0, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;->mVerticalState:I

    return v0
.end method

.method protected onCreateDrawableState(Landroid/view/View;[II)[I
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "originalStates"    # [I
    .param p3, "extraSpace"    # I

    .prologue
    const/4 v6, 0x0

    .line 107
    move-object v3, p2

    .line 108
    .local v3, "newStates":[I
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v4

    .line 109
    .local v4, "stateH":I
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result v5

    .line 111
    .local v5, "stateV":I
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 112
    invoke-static {p2}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates([I)I

    move-result v7

    invoke-static {v4}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates(I)I

    move-result v8

    or-int/2addr v7, v8

    invoke-static {v5}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates(I)I

    move-result v8

    or-int v1, v7, v8

    .line 113
    .local v1, "index":I
    sget-object v7, Lcom/miui/internal/variable/Android_View_View_class;->sViewStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "newStates":[I
    check-cast v3, [I

    .line 114
    .restart local v3    # "newStates":[I
    if-nez v3, :cond_1

    .line 115
    if-eqz p2, :cond_3

    array-length v2, p2

    .line 117
    .local v2, "length":I
    :goto_0
    add-int/lit8 v7, v2, 0x2

    new-array v3, v7, [I

    .line 118
    if-eqz v2, :cond_0

    .line 119
    invoke-static {p2, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    :cond_0
    aput v4, v3, v2

    .line 122
    add-int/lit8 v7, v2, 0x1

    aput v5, v3, v7

    .line 123
    sget-object v7, Lcom/miui/internal/variable/Android_View_View_class;->sViewStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    .end local v1    # "index":I
    .end local v2    # "length":I
    :cond_1
    if-eqz p3, :cond_2

    .line 128
    if-nez v3, :cond_4

    .line 129
    new-array v3, p3, [I

    .line 137
    :cond_2
    :goto_1
    return-object v3

    .restart local v1    # "index":I
    :cond_3
    move v2, v6

    .line 115
    goto :goto_0

    .line 131
    .end local v1    # "index":I
    :cond_4
    array-length v7, v3

    add-int/2addr v7, p3

    new-array v0, v7, [I

    .line 132
    .local v0, "fullStates":[I
    array-length v7, v3

    invoke-static {v3, v6, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object v3, v0

    goto :goto_1
.end method

.method public abstract relayout(Landroid/view/View;)V
.end method

.method public setHorizontalState(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontalState"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;

    move-result-object v0

    iput p2, v0, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;->mHorizontalState:I

    .line 69
    return-void
.end method

.method public abstract setLeftDirectly(Landroid/view/View;I)V
.end method

.method public abstract setRightDirectly(Landroid/view/View;I)V
.end method

.method public abstract setScrollXDirectly(Landroid/view/View;I)V
.end method

.method public abstract setScrollYDirectly(Landroid/view/View;I)V
.end method

.method public setVerticalState(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "verticalState"    # I

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;

    move-result-object v0

    iput p2, v0, Lcom/miui/internal/variable/Android_View_View_class$ValuedSparseArray;->mVerticalState:I

    .line 77
    return-void
.end method
