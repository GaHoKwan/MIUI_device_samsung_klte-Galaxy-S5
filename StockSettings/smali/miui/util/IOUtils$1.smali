.class final Lmiui/util/IOUtils$1;
.super Lmiui/util/Pools$Manager;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/Pools$Manager",
        "<",
        "Ljava/io/ByteArrayOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lmiui/util/IOUtils$1;->createInstance()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public onRelease(Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "element"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 50
    return-void
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Ljava/io/ByteArrayOutputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/util/IOUtils$1;->onRelease(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
