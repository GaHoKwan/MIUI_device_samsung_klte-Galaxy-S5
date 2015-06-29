.class Lmiui/util/DirectIndexedFile$Builder$Item;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lmiui/util/DirectIndexedFile$Builder$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mObjects:[Ljava/lang/Object;

.field final synthetic this$0:Lmiui/util/DirectIndexedFile$Builder;


# direct methods
.method private constructor <init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1103
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->this$0:Lmiui/util/DirectIndexedFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    iput p2, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    .line 1105
    iput-object p3, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    .line 1106
    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/DirectIndexedFile$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/util/DirectIndexedFile$Builder;
    .param p2, "x1"    # I
    .param p3, "x2"    # [Ljava/lang/Object;
    .param p4, "x3"    # Lmiui/util/DirectIndexedFile$1;

    .prologue
    .line 1099
    invoke-direct {p0, p1, p2, p3}, Lmiui/util/DirectIndexedFile$Builder$Item;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3400(Lmiui/util/DirectIndexedFile$Builder$Item;)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$Item;

    .prologue
    .line 1099
    iget v0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    return v0
.end method

.method static synthetic access$4100(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$Item;

    .prologue
    .line 1099
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1099
    check-cast p1, Lmiui/util/DirectIndexedFile$Builder$Item;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$Item;->compareTo(Lmiui/util/DirectIndexedFile$Builder$Item;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmiui/util/DirectIndexedFile$Builder$Item;)I
    .locals 2
    .param p1, "another"    # Lmiui/util/DirectIndexedFile$Builder$Item;

    .prologue
    .line 1126
    iget v0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    iget v1, p1, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1115
    const/4 v0, 0x0

    .line 1116
    .local v0, "result":Z
    if-ne p1, p0, :cond_1

    .line 1117
    const/4 v0, 0x1

    .line 1121
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 1118
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lmiui/util/DirectIndexedFile$Builder$Item;

    if-eqz v1, :cond_0

    .line 1119
    iget v1, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    check-cast p1, Lmiui/util/DirectIndexedFile$Builder$Item;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1110
    iget v0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    return v0
.end method
