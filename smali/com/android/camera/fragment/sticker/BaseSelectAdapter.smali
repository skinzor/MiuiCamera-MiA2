.class public abstract Lcom/android/camera/fragment/sticker/BaseSelectAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;,
        Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mItemSelectChangeListener:Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;

.field protected mLastSelectedItemPosition:I

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mSelectedItemPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mLastSelectedItemPosition:I

    .line 51
    iput-object p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private setSelected(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;Z)V
    .locals 2
    .param p1, "holder"    # Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
    .param p2, "selected"    # Z

    .prologue
    .line 70
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    iget-object v0, p1, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 71
    iget-object v1, p1, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;->mIVSelected:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method protected abstract getHolder(Landroid/view/View;)Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public initSelectItem(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 28
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    iput p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    .line 29
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 61
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    check-cast p1, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->onBindViewHolder(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 74
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    check-cast p1, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->onBindViewHolder(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
    .param p2, "position"    # I

    .prologue
    .line 63
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    iget-object v1, p1, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget v1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    .line 65
    .local v0, "selected":Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->setSelected(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;Z)V

    .line 66
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;->bindView(I)V

    .line 67
    return-void

    .line 64
    .end local v0    # "selected":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "selected":Z
    goto :goto_0
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;ILjava/util/List;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 76
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 77
    iget v1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->setSelected(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;Z)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    const v2, 0x7f0a0069

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;

    .line 86
    .local v0, "holder":Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
    invoke-virtual {v0}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;->getAdapterPosition()I

    move-result v1

    .line 87
    .local v1, "position":I
    iget v2, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    if-eq v2, v1, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mItemSelectChangeListener:Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mItemSelectChangeListener:Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;->onItemSelect(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->setSelectedItemPosition(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mItemSelectChangeListener:Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mItemSelectChangeListener:Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;->onItemSelect(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;IZ)Z

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 56
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    iget-object v1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->getLayoutId()I

    move-result v2

    .line 57
    const/4 v3, 0x0

    .line 56
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->getHolder(Landroid/view/View;)Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;

    move-result-object v1

    return-object v1
.end method

.method public setItemSelectChangeListener(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;)V
    .locals 0
    .param p1, "itemSelectChangeListener"    # Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;

    .prologue
    .line 39
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mItemSelectChangeListener:Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;

    .line 40
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/android/camera/fragment/sticker/BaseSelectAdapter;, "Lcom/android/camera/fragment/sticker/BaseSelectAdapter<TT;>;"
    const/4 v2, 0x1

    .line 32
    iget v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    iput v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mLastSelectedItemPosition:I

    .line 33
    iput p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    .line 34
    iget v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mLastSelectedItemPosition:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 35
    iget v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 36
    return-void
.end method
