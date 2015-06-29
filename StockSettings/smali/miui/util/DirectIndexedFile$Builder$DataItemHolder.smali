.class Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataItemHolder"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/util/DirectIndexedFile$Builder;


# direct methods
.method private constructor <init>(Lmiui/util/DirectIndexedFile$Builder;)V
    .locals 1

    .prologue
    .line 1130
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->this$0:Lmiui/util/DirectIndexedFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    .line 1132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$Builder;Lmiui/util/DirectIndexedFile$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/util/DirectIndexedFile$Builder;
    .param p2, "x1"    # Lmiui/util/DirectIndexedFile$1;

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiui/util/DirectIndexedFile$Builder;)V

    return-void
.end method

.method static synthetic access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    .prologue
    .line 1130
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    .prologue
    .line 1130
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getAll()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1149
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private put(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1135
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1136
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1137
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1138
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    :cond_0
    return-object v0
.end method

.method private size()I
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
