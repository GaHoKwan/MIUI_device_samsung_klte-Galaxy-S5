.class public abstract Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_Widget_AbsSpinner_class.java"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$1;,
        Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy",
        "<",
        "Landroid/widget/AbsSpinner;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Landroid/widget/AbsSpinner;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 21
    return-void
.end method
