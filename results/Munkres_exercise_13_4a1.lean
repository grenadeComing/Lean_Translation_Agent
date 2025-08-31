import Mathlib
open Set Filter Topology

/-- If $\mathcal{T}_\alpha$ is a family of topologies on $X$, show that $\bigcap \mathcal{T}_\alpha$ is a topology on $X$. -/
lemma isTopologicalSpace_sInf {X : Type*} (𝒯 : Set (TopologicalSpace X)) :
  TopologicalSpace X :=
  sInf 𝒯

/-- The intersection of a family of topologies is a topology. -/
theorem intersection_of_topologies_is_topology {X : Type*} (𝒯 : Set (TopologicalSpace X)) :
  TopologicalSpace X :=
  sInf 𝒯
