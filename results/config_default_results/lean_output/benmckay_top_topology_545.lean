import Mathlib

-- Prove that the projection map from X × Y to X is closed when Y is compact and X is Hausdorff.
-- We provide a skeleton using a placeholder proof.
 theorem fst_proj_closed_of_compact
   {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
   [CompactSpace Y] [T2Space X] :
   IsClosedMap (fun p : X × Y => p.1) := by
   sorry
