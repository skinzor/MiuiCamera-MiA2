.class Landroid/support/v7/widget/RecyclerView$4;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 544
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 545
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->access$600(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 546
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 584
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 585
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 595
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->access$800(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 596
    return-void

    .line 586
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    .line 586
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public detachViewFromParent(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$4;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 601
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, p1}, Landroid/support/v7/widget/RecyclerView;->access$900(Landroid/support/v7/widget/RecyclerView;I)V

    .line 615
    return-void

    .line 602
    :cond_1
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 603
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-nez v2, :cond_3

    .line 611
    :cond_2
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 604
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_2

    .line 605
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "called detach on an already detached child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 564
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 578
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 619
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 620
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1000(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 627
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 628
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1100(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 4

    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$4;->getChildCount()I

    move-result v0

    .line 570
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 573
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 574
    return-void

    .line 571
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$4;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView;->access$700(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 555
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 556
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 559
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    .line 560
    return-void

    .line 557
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$4;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView;->access$700(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    goto :goto_0
.end method
