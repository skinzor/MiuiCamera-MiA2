.class final Landroid/support/v4/app/FragmentTransition$4;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransition;->configureSharedElementsOrdered(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$finalSharedElementTransition:Ljava/lang/Object;

.field final synthetic val$fragments:Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

.field final synthetic val$impl:Landroid/support/v4/app/FragmentTransitionImpl;

.field final synthetic val$inEpicenter:Landroid/graphics/Rect;

.field final synthetic val$inFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$nameOverrides:Landroid/support/v4/util/ArrayMap;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$outFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransition$4;->val$impl:Landroid/support/v4/app/FragmentTransitionImpl;

    iput-object p2, p0, Landroid/support/v4/app/FragmentTransition$4;->val$nameOverrides:Landroid/support/v4/util/ArrayMap;

    iput-object p3, p0, Landroid/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/FragmentTransition$4;->val$fragments:Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    iput-object p5, p0, Landroid/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    iput-object p7, p0, Landroid/support/v4/app/FragmentTransition$4;->val$inFragment:Landroid/support/v4/app/Fragment;

    iput-object p8, p0, Landroid/support/v4/app/FragmentTransition$4;->val$outFragment:Landroid/support/v4/app/Fragment;

    iput-boolean p9, p0, Landroid/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    iput-object p10, p0, Landroid/support/v4/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/support/v4/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iput-object p12, p0, Landroid/support/v4/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 735
    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$4;->val$impl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 736
    iget-object v3, p0, Landroid/support/v4/app/FragmentTransition$4;->val$nameOverrides:Landroid/support/v4/util/ArrayMap;

    iget-object v4, p0, Landroid/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/app/FragmentTransition$4;->val$fragments:Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    .line 735
    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransition;->-wrap0(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    .line 738
    .local v1, "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz v1, :cond_0

    .line 739
    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 740
    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$4;->val$inFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v4/app/FragmentTransition$4;->val$outFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v4, p0, Landroid/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    .line 744
    const/4 v5, 0x0

    .line 743
    invoke-static {v2, v3, v4, v1, v5}, Landroid/support/v4/app/FragmentTransition;->-wrap3(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    .line 745
    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 746
    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$4;->val$impl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 747
    iget-object v3, p0, Landroid/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    .line 748
    iget-object v5, p0, Landroid/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    .line 746
    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 751
    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$4;->val$fragments:Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    iget-object v3, p0, Landroid/support/v4/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iget-boolean v4, p0, Landroid/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    .line 750
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransition;->-wrap1(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    .line 752
    .local v0, "inEpicenterView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 753
    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$4;->val$impl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 754
    iget-object v3, p0, Landroid/support/v4/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    .line 753
    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 757
    .end local v0    # "inEpicenterView":Landroid/view/View;
    :cond_1
    return-void
.end method
