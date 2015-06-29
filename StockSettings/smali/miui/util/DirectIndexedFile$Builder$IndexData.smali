.class Lmiui/util/DirectIndexedFile$Builder$IndexData;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field private mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private mDataItemHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/util/DirectIndexedFile$Builder$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$Item;

.field private mIndexDataGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/DirectIndexedFile$Builder$Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "dataItemCount"    # I

    .prologue
    .line 1163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    .line 1165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    .line 1166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    .line 1167
    new-array v0, p1, [Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    .line 1168
    return-void
.end method

.method synthetic constructor <init>(ILmiui/util/DirectIndexedFile$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lmiui/util/DirectIndexedFile$1;

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;-><init>(I)V

    return-void
.end method

.method static synthetic access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .prologue
    .line 1153
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .prologue
    .line 1153
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object v0
.end method

.method static synthetic access$2500(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Lmiui/util/DirectIndexedFile$Builder$Item;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .prologue
    .line 1153
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$Item;

    return-object v0
.end method

.method static synthetic access$2502(Lmiui/util/DirectIndexedFile$Builder$IndexData;Lmiui/util/DirectIndexedFile$Builder$Item;)Lmiui/util/DirectIndexedFile$Builder$Item;
    .locals 0
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$IndexData;
    .param p1, "x1"    # Lmiui/util/DirectIndexedFile$Builder$Item;

    .prologue
    .line 1153
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$Item;

    return-object p1
.end method

.method static synthetic access$2700(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .prologue
    .line 1153
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .prologue
    .line 1153
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .prologue
    .line 1153
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object v0
.end method

.method static synthetic access$3302(Lmiui/util/DirectIndexedFile$Builder$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 0
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Builder$IndexData;
    .param p1, "x1"    # [Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    .prologue
    .line 1153
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p1
.end method
