.class public Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source "Android_View_LayoutInflater_class.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_View_LayoutInflater_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory$Holder;
    }
.end annotation


# instance fields
.field private Android_View_LayoutInflater_class:Lcom/miui/internal/variable/Android_View_LayoutInflater_class;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    .line 44
    const-string v0, "Android_View_LayoutInflater_class"

    .line 45
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;

    iput-object v1, p0, Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;->Android_View_LayoutInflater_class:Lcom/miui/internal/variable/Android_View_LayoutInflater_class;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_View_LayoutInflater_class$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/internal/variable/Android_View_LayoutInflater_class$1;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory$Holder;->INSTANCE:Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_View_LayoutInflater_class;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;->Android_View_LayoutInflater_class:Lcom/miui/internal/variable/Android_View_LayoutInflater_class;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;->get()Lcom/miui/internal/variable/Android_View_LayoutInflater_class;

    move-result-object v0

    return-object v0
.end method
