import Mathlib

lemma fundamental_group_of_compact_path_connected_locally_simply_connected_is_finitely_generated
  (X : Type*) [TopologicalSpace X] [CompactSpace X]
  (x0 : X) (hpc : PathConnectedSpace X) (hls : LocallySimplyConnectedSpace X) :
  IsFinitelyGenerated (FundamentalGroup X x0) := by sorry
