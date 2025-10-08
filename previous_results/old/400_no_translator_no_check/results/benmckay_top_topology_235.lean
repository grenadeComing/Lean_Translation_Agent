import Mathlib

open Set

theorem benmckay_top_topology_235 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {A : Set X} {f g : X → Y} (hA : Dense A) (hf : Continuous f) (hg : Continuous g)
  (hfg : EqOn f g A) : f = g := by sorry
