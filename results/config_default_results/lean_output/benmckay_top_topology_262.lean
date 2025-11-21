import Mathlib

theorem benmckay_top_topology_262 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (A : Set X) (hA : Dense A) :
  Set.range (fun g : ContinuousMap Y ℝ => g.comp (ContinuousMap.snd : ContinuousMap (X × Y) Y)) =
    { f : ContinuousMap (X × Y) ℝ | ∀ x y1 y2, f (x, y1) = f (x, y2) } := by sorry
